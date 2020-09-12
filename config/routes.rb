Rails.application.routes.draw do

  namespace :api do
    resources :trips, :items, :users
    post'/login', to: 'auth#create'


  end
  
end
