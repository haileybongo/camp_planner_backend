class Api::TripsController < ApplicationController


    def index
        trips = current_user.trips
        render json: TripSerializer.new(trips)
    end

    def create
   
        trip = Trip.new(trip_params)
        list = Item.find(params[:item])


        if trip.save
            trip.item = list    
            trip.user= current_user
            trip.save
            render json: TripSerializer.new(trip), status: :accepted
        else
            render json: {errors: trip.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private 
    
    def trip_params
        params.require(:trip).permit(:location, :campground, :arrival, :departure, :user_id)
    end

end
