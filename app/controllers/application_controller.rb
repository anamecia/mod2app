class ApplicationController < ActionController::Base
    helper_method :current_user, :user_logged_in?, :current_host, :host_logged_in?, :require_user_logged_in, :require_host_logged_in
    helper_method :current_admin, :admin_logged_in?, :require_admin_logged_in

    def current_user
        @user = User.find_by(id:session[:user_id])
    end 

    def user_logged_in?
        if current_user 
            return true 
        else 
            return false 
        end 
    end 

    def require_user_logged_in
        return redirect_to userlogin_path unless user_logged_in? 
    end

    def current_host
        @host = Host.find_by(id:session[:host_id])
    end 

    def host_logged_in?
        if current_host 
            return true 
        else 
            return false 
        end 
    end 

    def require_host_logged_in
        return redirect_to hostlogin_path unless host_logged_in? 
    end
#=======
    def current_admin
        @admin = Admin.find_by(id:session[:admin_id])
    end 

    def admin_logged_in?
        if current_admin 
            return true 
        else 
            return false 
        end 
    end 

    def require_admin_logged_in
        return redirect_to adminlogin_path unless admin_logged_in? 
    end

end
