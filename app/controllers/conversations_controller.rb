# app/controllers/conversations_controller.rb

class ConversationsController < ApplicationController
  before_action :set_conversation, only: [:show, :edit, :update, :destroy]

  # GET /conversations
  def index
    @conversations = Conversation.all
    render json: @conversations # Make sure to use @conversations here
    Rails.logger.info "Fetched #{@conversations.count} conversations"
  rescue => e
    Rails.logger.error "Error fetching all conversations: #{e.message}"
    render json: { error: "Failed to fetch conversations" }, status: :internal_server_error
  end

  # GET /conversations/:id
  def show
    @messages = @conversation.messages
    Rails.logger.info "Fetched #{@messages.count} messages for conversation #{@conversation.id}"
    render json: { conversation: @conversation, messages: @messages }
  rescue => e
    Rails.logger.error "Error fetching messages for conversation #{@conversation.id}: #{e.message}"
    render json: { error: "Failed to fetch messages" }, status: :internal_server_error
  end

  # POST /conversations
  def create
    @conversation = Conversation.new(conversation_params)

    if @conversation.save
      Rails.logger.info "Successfully created conversation ID: #{@conversation.id}"
      render json: @conversation, status: :created
    else
      Rails.logger.warn "Failed to create conversation: #{@conversation.errors.full_messages.join(', ')}"
      render json: { error: @conversation.errors.full_messages }, status: :unprocessable_entity
    end
  rescue => e
    Rails.logger.error "Error creating conversation: #{e.message}"
    render json: { error: "Failed to create conversation" }, status: :internal_server_error
  end

  # PATCH/PUT /conversations/:id
  def update
    if @conversation.update(conversation_params)
      Rails.logger.info "Successfully updated conversation ID: #{@conversation.id}"
      render json: @conversation
    else
      Rails.logger.warn "Failed to update conversation: #{@conversation.errors.full_messages.join(', ')}"
      render json: { error: @conversation.errors.full_messages }, status: :unprocessable_entity
    end
  rescue => e
    Rails.logger.error "Error updating conversation: #{e.message}"
    render json: { error: "Failed to update conversation" }, status: :internal_server_error
  end

  # DELETE /conversations/:id
  def destroy
    @conversation.destroy
    Rails.logger.info "Successfully destroyed conversation ID: #{@conversation.id}"
    render json: { message: 'Conversation was successfully destroyed.' }, status: :ok
  rescue => e
    Rails.logger.error "Error destroying conversation: #{e.message}"
    render json: { error: "Failed to destroy conversation" }, status: :internal_server_error
  end

  private

  def set_conversation
    @conversation = Conversation.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    Rails.logger.error "Error finding conversation ID:#{params[:id]}, message: #{e.message}"
    render json: { error: 'Conversation not found' }, status: :not_found
  end

  def conversation_params
    params.require(:conversation).permit(:name, user_ids: [])
  end
end
