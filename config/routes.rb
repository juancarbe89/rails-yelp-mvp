Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Also, our navbar have a link to the root_path, so make sure that you have a
  # root to: "controller#action" route in your config/routes.rb file.

  # A visitor can see the list of all restaurants.
  get '/restaurants' => 'restaurants#index'
  # He can add a new restaurant, and be redirected to the show view of that new restaurant.
  get '/restaurants/new' => 'restaurants#new'
  post '/restaurants' => 'restaurants#create'
  # # He can see the details of a restaurant, with all the reviews related to the restaurant.
  get '/restaurants/:id' => 'restaurants#show'
  # He can add a new review to a restaurant
  resources :reviews, only: [:new, :create]
end
