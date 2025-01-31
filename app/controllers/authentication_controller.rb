class AuthenticationController < ApplicationController
  def login
    user = User.find_for_database_authentication(email: params[:email])

    if user && user.valid_password?(params[:password])
      token = JwtService.encode(user_id: user.id)
      render json: { token: token, user: user }
    else
      render json: { error: 'Invalid credentials' }, status: :unauthorized
    end
  end

  def logout
    head :no_content
  end
end
