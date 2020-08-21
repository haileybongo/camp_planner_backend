class TripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :location, :campground, :arrival, :departure, :user
end
