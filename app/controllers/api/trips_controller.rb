class Api::TripsController < ApplicationController

    def index
        trips = Trip.all 
        render json: TripSerializer.new(trips)
    end

    def create
        binding.pry
        trip = Trip.new(trip_params)
        list = Item.find(params[:item])


        if trip.save
            trip.item = list
            binding.pry
            render json: trip, status: :accepted
        else
            render json: {errors: trip.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private 
    
    def trip_params
        params.require(:trip).permit(:location, :campground, :arrival, :departure, :user_id)
    end

end
