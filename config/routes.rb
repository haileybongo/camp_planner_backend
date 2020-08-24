Rails.application.routes.draw do

  namespace :api do
    resources :trips, :items

  end
  
end
