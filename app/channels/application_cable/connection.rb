module ApplicationCable
  class Connection < ActionCable::Connection::Base
    # Authenticate the user
    # def connect
    #   self.current_user = find_verified_user
    # end

    # def disconnect
    #   # Handle disconnect
    # end

    # private

    def find_verified_user

      verified_user = User.find_by(id: request.params[:user_id]) # WIP - Need to pass cookies from frontend...
      
      if verified_user
        verified_user
      else
        reject_unauthorized_connection
      end
    end

    # def current_user=(user)
    #   @current_user = user
    # end
    def connect
      # For now, just print a message to verify connection
      logger.add_tags "ActionCable", "Connected"
    end

    def disconnect
      # Handle disconnection logic (e.g., logging)
      logger.add_tags "ActionCable", "Disconnected"
    end
  end
end
