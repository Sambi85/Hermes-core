class ChatChannel < ApplicationCable::Channel
  def subscribed

    @conversation = Conversation.find(params[:conversation_id])
    @current_user = User.find(params[:user_id]) # Need Devise Current User here...
    
    Rails.logger.debug "Subscribed to conversation: #{@conversation.id} by user_id: #{@current_user.id}"

    if @conversation.users.include?(@current_user)
      stream_for @conversation
    else
      reject
    end
  end

  def unsubscribed
    # Optionally, handle any cleanup here (e.g., notify other users that this user has left)
  end

  def receive(data)

    recipient_ids = @conversation.users.pluck(:id)
    if recipient_ids.blank?
      reject_invalid_message("At least one recipient is required")
      return
    end

    message = @conversation.messages.create!(
      user: @current_user, 
      body: data['message'], 
      recipient_ids: recipient_ids, 
      sender_id: @current_user.id
      )

    ActionCable.server.broadcast(
      "chat_#{@conversation.id}_channel", 
      render_message(message)
    )

    Rails.logger.debug "Message sent: #{message.body}"
  end

  private

  def render_message(message)
      message.to_json
  end

  def reject_invalid_message(error_message)
    ActionCable.server.broadcast(
      "chat_#{@conversation.id}_channel",
      error: error_message
    )
  end
end