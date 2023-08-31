Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'pages/dashboard', to: 'pages#dashboard'
  # resources :pages, only: %i[dashboard home]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :spaceships, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :bookings, only: %i[create edit update]
  end

  resources :bookings, only: %i[destroy]
end
