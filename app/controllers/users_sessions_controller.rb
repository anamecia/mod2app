class UsersSessionsController < ApplicationController 

    def new

    end 

    def create
        user = User.find_by(username:params[:user][:username])
        if user.try(:authenticate, params[:user][:password])
            session[:user_id] = user.id
            if session[:last_visited_event] !=0
                redirect_to event_path(session[:last_visited_event])
            else
                redirect_to user_path(user.id)
            end 
        else
            flash[:notice] = "Sorry, we can't find a user with that username and password"
            redirect_to userlogin_path
        end
    end 

    def destroy
        session.destroy
        redirect_to '/'
    end 


 

end 