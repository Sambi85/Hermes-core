require 'rails_helper'

RSpec.describe User, type: :model do

  it "is valid with a name and email" do
    user = create(:user)
    expect(user).to be_valid
  end

  it "is invalid without a name or phone number" do
    user = build(:user, name: nil)
    expect(user).not_to be_valid
  end

  it "is invalid without an email" do
    user = build(:user, email: nil)
    expect(user).not_to be_valid
  end

  it "is invalid without a phone number" do
    user = build(:user, phone_number: nil)
    expect(user).not_to be_valid
  end

  it "is invalid with a duplicate email" do
    create(:user,email: "john@example.com")
    user = User.new(name: "Jane Doe", email: "john@example.com", phone_number: "12345678902")

    expect(user).not_to be_valid
  end

  it "is invalid with a duplicate phone number" do
      create(:user, phone_number: "12345678930")
      user = User.new(name: "Jane Doe", email: "jane@example.com", phone_number: "12345678930")
      expect(user).not_to be_valid
  end

  # Test associations
  it { should have_and_belong_to_many(:conversations) }
  it { should have_and_belong_to_many(:messages) }

  # Test HABTM relationship (User can be added to a conversation)
  it "can be added to a conversation" do
    user = create(:user)
    conversation = Conversation.create!(name: "General Chat")
    conversation.users << user 

    expect(conversation.users).to include(user)
    expect(user.conversations).to include(conversation)
  end

  # Test messages association
  it "can have messages + recipients" do
    user1 = create(:user)
    user2 = create(:user)

    conversation = Conversation.create!(name: "General Chat")
    conversation.users << user1
    conversation.users << user2
  
    # Create message with recipients
    message = Message.create!(conversation: conversation, body: "Hello World", user: user1, recipients: [user2], sender_id: user1.id )
  
    expect(message.recipients).to include(user2)
    expect(message.user).to eq(user1)
  end
  
end
