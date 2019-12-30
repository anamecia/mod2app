class HostsController < ApplicationController

    before_action :require_host_logged_in
    skip_before_action :require_host_logged_in, only: [:new, :create]

    def new

    end 

    def create 
    
        host = Host.create(host_params)
        session[:host_id] = host.id 
        redirect_to host_path(host.id)
    end

    def show
       @host = current_host
       @events = @host.events
       

    end 
    private

    def host_params
        params.require(:host).permit(:hostname, :password, :password_confirmation)

    end 

end 