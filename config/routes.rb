Rails.application.routes.draw do

  devise_for :users
  resources :classifications do
    resources :trans_tables
    resources :class_trans
  end
  resources :trans_tables
  resources :users
  resources :home_pages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home_pages#index"  
end
