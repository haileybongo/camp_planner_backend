class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :list
end
