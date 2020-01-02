class ReviewsController < ApplicationController 

    before_action :require_user_logged_in

    # def new
    #     @booking = Booking.new
    #     @event = Event.find(params[:id])
    #     @places = @event.places
    # end 

    def create
        review = Review.create(review_params)
        redirect_to event_path(review.event_id)
    end 

    private 

    def review_params
        params.require(:review).permit(:rating, :event_id, :content)
    end 
end 