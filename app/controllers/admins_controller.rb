class AdminsController < ApplicationController

    before_action :require_admin_logged_in
    skip_before_action :require_admin_logged_in, only: [:new, :create]

    def new
    end 

    def create 
        admin = Admin.create(admin_params)
        session[:admin_id] = admin.id 
        redirect_to admin_path(admin.id)
    end

    def show
       @admin = current_admin
    end 

    private

    def admin_params
        params.require(:admin).permit(:adminname, :password, :password_confirmation)
    end 

end 