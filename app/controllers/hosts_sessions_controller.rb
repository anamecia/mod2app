class HostsSessionsController < ApplicationController 

    def new

    end 

    def create
        host = Host.find_by(hostname:params[:host][:hostname])
        # host = host.try(:authenticate, params[:host][:password])
        # return redirect_to hostlogin_path unless host
        # session[:host_id] = host.id
        # redirect_to host_path(host.id)
        if host.try(:authenticate, params[:host][:password])
            session[:host_id] = host.id
            redirect_to host_path(host.id)
        else
            flash[:notice] = "Sorry, we can't find a host with that hostname and password"
            redirect_to hostlogin_path
        end

    end 


    def destroy
        session.destroy
        redirect_to '/'
    end 

    
end 