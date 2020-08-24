class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :trips
end
