class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :trip
end
