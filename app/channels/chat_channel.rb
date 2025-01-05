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

    current_user = User.find_by(id: 1)  # Replace with dynamic user logic if needed

    if current_user.nil?
      reject_invalid_message("User not found")
      return
    end
  
    sender = data['user_id'] == current_user.id ? 'user' : 'other'
    recipients = User.find(recipient_ids)

    begin
      parsed_identifier = JSON.parse(identifier)
      puts parsed_identifier['channel']
    rescue JSON::ParserError => e
      puts "Error parsing JSON: #{e.message}"
    end
  
    @conversation = Conversation.find(parsed_identifier['conversation_id']) # Make sure conversation is fetched correctly
    all_recipients_are_valid = recipients.all? { |recipient| @conversation.users.include?(recipient) }
    unless all_recipients_are_valid
      reject_invalid_message("One or more recipients are not part of this conversation")
      return
    end
  
    recipient_ids = recipient_ids.uniq
  
    message = @conversation.messages.create!(
      user: current_user, 
      body: data['message'], 
      recipient_ids: recipient_ids,
      sender_id: current_user.id
    )
  
    ActionCable.server.broadcast(
      "chat_#{@conversation.id}_channel", 
      { 
        body: message.body,
        user_name: message.user.name,  # User name of the sender
        sender: sender,
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
