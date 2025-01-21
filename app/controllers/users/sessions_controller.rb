class Users::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token, only: :destroy
  skip_before_action :verify_authenticity_token, only: :create

  def after_sign_in_path_for(resource)
    'http://localhost:4000'
  end
  
  def create
    @current_user = User.find_for_database_authentication(email: params[:user][:email])

    if @current_user && @current_user.valid_password?(params['user']['password'])
      sign_in(@current_user)      
      flash[:notice] = 'Congrats, you successfully logged in!'
      puts "Logging in CURRENT USER: #{@current_user[:name]}, #{@current_user[:email]}"
      redirect_to after_sign_in_path_for(@current_user) 
    else
      flash[:alert] = 'Invalid email or password, please try again or sign up!'
      binding.pry
      render :_new
    end
  end

  def destroy
    if @current_user
      sign_out(@current_user)
      reset_session
      redirect_to 'http://localhost:3000/users/sign_in'
    else
      flash[:alert] = 'Invalid email or password'
    end
  end

end
