Rails.application.routes.draw do

  namespace :api do
    resources :trips, :items, :users
    post'/login', to: 'auth#create'
    get '/profile', to: 'users#profile'

  end
  
end
