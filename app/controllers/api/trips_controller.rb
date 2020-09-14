class Api::TripsController < ApplicationController


    def index
        trips = current_user.trips
        render json: TripSerializer.new(trips)
    end

    def create
   
        trip = Trip.create(trip_params)
        list = Item.find(params[:item_id])
        
        if trip.valid?
            trip.item = list    
            trip.user= current_user
            trip.save
            if trip.item != nil
            render json: TripSerializer.new(trip), status: :accepted
            else
                render json: {errors: "Something went wrong, please try again"}
            end

        else
            render json: {errors: trip.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        trip = Trip.find(params[:id])
        trip.item_id = nil
        trip.destroy
        render json: "Successfully Deleted"
    end


    private 
    
    def trip_params
        params.require(:trip).permit(:location, :campground, :arrival, :departure, :user_id, :item_id)
    end

end
