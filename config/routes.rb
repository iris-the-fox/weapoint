Rails.application.routes.draw do
  get 'admin' =>'admin#index'
  root to: 'main#index'

  get 'main/index'
  get 'contacts' => "contacts#index"
  resources :learnings
  resources :ammunitions
  resources :posts
  resources :sessions, only: [:new, :create, :destroy]
  resources :firearms
  get '/news' => "posts#index"
  resources :tags, only: [:show]
  resources :learntags, only: [:show]

 

  resources :pictures
  resources :choosen_arms
  resources :choosen_ammo

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
