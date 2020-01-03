class BookingsController < ApplicationController 

    before_action :require_user_logged_in

    def new
        @booking = Booking.new
        @event = Event.find(params[:id])
        @places = @event.places
    end 

    def create

        booking = Booking.create(booking_params)
        booking.user = current_user
        booking.save
        @event = Event.find(params[:booking][:event_id])
        @event.places -= booking.ticket
        @event.save 
        # byebug
        redirect_to user_path(current_user.id)
    end 

    def show
        @booking = Booking.find(params[:id])
        @date = @booking.event.date.strftime('%d %B %Y')
        @time = @booking.event.time.strftime('%H:%M')
    end 

    def destroy
        @booking = Booking.find(params[:id])
        @event = @booking.event
        @event.places += @booking.ticket
        @event.save 
        @booking.destroy

        redirect_to user_path(current_user.id)

    end 

    private 

    def booking_params
        params.require(:booking).permit(:ticket, :event_id)
    end 
end 