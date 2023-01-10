Rails.application.routes.draw do
  root 'pages#index'

  # delete :logout, to: 'sessions#logout'
  # get :logged_in, to: 'sessions#logged_in'
  # post '/login',  to: 'sessions#create'
  # post '/logout', to: 'sessions#destroy'
  # get 'is_logged_in' to: 'sessions#is_logged_in'
  


  namespace :api do
    namespace :v1 do
      resources :registrations, only: [:create]
      resources :trips
      #resources :activities
      resources :sessions, only: [:create]
      delete :logout, to: 'sessions#logout'
      get :logged_in, to: 'sessions#logged_in'
      # resources :users, only: [:create, :show, :index]
      # resources :sessions, only: [:create, :destroy, :is_logged_in]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
