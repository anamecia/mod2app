class EventsController < ApplicationController

    before_action :current_host

    def index
        @events = Event.all
    end 

    def new
        @event = Event.new
    end 

    def create
        @event = Event.create(event_params)
        @event.host = current_host
        @event.save
       
        if @event.valid?
            redirect_to host_path(current_host.id)
          else
            flash[:errors] = @event.errors.full_messages
            render :new
          end
    end 

    def show
        @event = Event.find(params[:id])
        @users = @event.users
        @date = @event.date.strftime('%d %B %Y')
        @time = @event.time.strftime('%H:%M')
        session[:last_visited_event] = @event.id
    end 

    private

    def event_params
        params.require(:event).permit(:title, :price, :date, :description, :places, :time, :category_id)
    end 

end 