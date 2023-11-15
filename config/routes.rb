Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # root to: "restaurants#index"

  # get '/restaurants', to: 'restaurants#index' #liste de tous les restaurants
  # get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant #ajouter un nouveau restaurant
  # post '/restaurants', to: 'restaurants#create' #crée le nouveau restaurant

  # # visiteur peut ajouter un nouvel avis à un restaurant.
  # get '/restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  # post '/restaurants/:restaurant_id/reviews', to: 'restaurants#reviews' #crée le nouvel avis

  # visiteur peut voir les détails d’un restaurant, avec tous les avis associés au restaurant.
  resources :restaurants, only: [:index, :create, :new, :show] do
    resources :reviews, only: [:create, :new]
  end
  resources :reviews, only: [:destroy]
end
