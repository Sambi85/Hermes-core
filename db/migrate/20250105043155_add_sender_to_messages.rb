class AddSenderToMessages < ActiveRecord::Migration[6.0]
  def up
    # Step 1: Add sender_id column as nullable
    add_column :messages, :sender_id, :integer, null: true
    add_index :messages, :sender_id

    Message.find_each do |message|
      sender = message.conversation.users.first # Example logic to determine sender (first user in the conversation)
      
      if sender.present? # Ensure the sender exists
        message.update_column(:sender_id, sender.id) # Update sender_id for each message
      else
        Rails.logger.warn("Message ID #{message.id} has no sender in the conversation.")
      end
    end

    change_column_null :messages, :sender_id, false
  end

  def down
    # Rollback the NOT NULL constraint change
    change_column_null :messages, :sender_id, true

    # Remove the sender_id column and its index
    remove_index :messages, :sender_id
    remove_column :messages, :sender_id
  end
end
