Rails.application.routes.draw do
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :registrations, only: [:create]
      resources :trips, only: [:index, :show, :create, :update, :destroy]
      resources :sessions, only: [:create]
      delete :logout, to: 'sessions#logout'
      get :logged_in, to: 'sessions#logged_in'
      get '/search-by-user/:id', to: "trips#search_by_user"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
