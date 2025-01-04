class ChatChannel < ApplicationCable::Channel
  def subscribed
    @conversation = Conversation.find(params[:conversation_id])
    
    Rails.logger.debug "Subscribed to conversation: #{@conversation.id} by user: #{params[:user_id]}"

    user = User.find(params[:user_id])
    if @conversation.users.include?(user)
      stream_for @conversation
    else
      reject
    end
  end

  def unsubscribed
    # Optionally, handle any cleanup here (e.g., notify other users that this user has left)
  end

  def receive(data)
    recipient_ids = data['recipient_ids']
    if recipient_ids.blank?
      reject_invalid_message("Recipient is required")
      return
    end

    current_user = User.find(1)  # Replace with Authentication current_user
    recipients = User.find(recipient_ids)

    all_recipients_are_valid = recipients.all? { |recipient| @conversation.users.include?(recipient) }
    unless all_recipients_are_valid
      reject_invalid_message("One or more recipients are not part of this conversation")
      return
    end
    
    message = @conversation.messages.create!(user: current_user, body: data['message'], recipient_ids: recipient_ids)

    ActionCable.server.broadcast(
      "chat_#{@conversation.id}_channel", 
      { 
        body: message.body,
        user_name: message.user.name,  # assuming you want to show the user's name
        created_at: message.created_at.strftime('%Y-%m-%d %H:%M:%S')
      }
    )

    Rails.logger.debug "Message sent: #{message.body}"
  end

  private

  def reject_invalid_message(error_message)
    ActionCable.server.broadcast(
      "chat_#{@conversation.id}_channel",
      error: error_message
    )
  end

end