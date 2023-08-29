Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # create a spaceship
  get "spaceships/new", to: "spaceships#new", as: :new_spaceship
  post "spaceships", to: "spaceships#create"
end
