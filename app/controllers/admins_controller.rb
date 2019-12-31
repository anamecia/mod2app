class AdminsController < ApplicationController

    before_action :require_admin_logged_in
    skip_before_action :require_admin_logged_in, only: [:new, :create]

    def new
    end 

    def create 
        admin = Admin.create(admin_params)
        session[:admin_id] = admin.id 
        redirect_to adminhomepage_path
    end

    def homepage
       @admin = current_admin
       @inactive_hosts = Host.inactive_hosts
       @most_popular_host = Host.most_popular_host
       @inactive_users = User.inactive_users
       @most_popular_category = Event.most_popular_category
       @most_expensive_event = Event.most_expensive_event
    end 

    private

    def admin_params
        params.require(:admin).permit(:adminname, :password, :password_confirmation)
    end 

end 