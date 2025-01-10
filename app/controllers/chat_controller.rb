class ChatController < ApplicationController
  def show
    @conversation = Conversation.find(params[:conversation_id])
  end
end