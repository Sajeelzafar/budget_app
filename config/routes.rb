Rails.application.routes.draw do
  root "home_pages#index"
  devise_for :users
  resources :class_trans
  resources :transactions
  resources :classifications
  resources :users
  resources :home_pages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
end
