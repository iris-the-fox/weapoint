Rails.application.routes.draw do
  resources :posts
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'firearms#index'
  resources :firearms
  get "firearms" => 'firearms#index'

  resources :choosen_arms, only: [:new, :create, :show]

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
