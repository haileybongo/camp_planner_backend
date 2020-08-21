class Api::TripsController < ApplicationController

    def index
        trips = Trip.all 
        render json: TripSerializer.new(trips)
    end

    def create
        trip = Syllabus.new(trip_params)
        if syllabus.save
            render json: trip, status: :accepted
        else
            render json: {errors: syllabus.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private 
    
    def trip_params
        params.require(:trip).permit(:location, :campground, :arrival, :departure, :user_id)
    end

end
