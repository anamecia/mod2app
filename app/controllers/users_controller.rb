class UsersController < ApplicationController
    before_action :require_user_logged_in
    skip_before_action :require_user_logged_in, only: [:new, :create]

    def new

    end 

    def create 
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id 
            redirect_to user_path(user.id)
          else
            flash[:notice] = user.errors.full_messages
            render :new
          end
    end

    def show
       @user = current_user
       @bookings = @user.bookings

    end 

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end 

end 