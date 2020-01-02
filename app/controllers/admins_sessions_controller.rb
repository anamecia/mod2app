class AdminsSessionsController < ApplicationController 

    def new
    end 

    def create
        admin = Admin.find_by(adminname:params[:admin][:adminname])
        # admin = admin.try(:authenticate, params[:admin][:password])
        # return redirect_to adminlogin_path unless admin
        # session[:admin_id] = admin.id
        # redirect_to adminhomepage_path
        if admin.try(:authenticate, params[:admin][:password])
            session[:admin_id] = admin.id
            redirect_to adminhomepage_path
        else
            flash[:notice] = "Sorry, we can't find an admin with that adminname and password"
            redirect_to adminlogin_path
        end
    end 

    def destroy
        session.destroy
        redirect_to '/'
    end 

end 