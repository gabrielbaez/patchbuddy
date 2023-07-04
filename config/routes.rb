Rails.application.routes.draw do
  resources :app_codes
  get 'app_code/index'
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  #root "app_codes#index"
end
