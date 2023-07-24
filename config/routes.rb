Rails.application.routes.draw do
  get 'servers/getdata'
  resources :servers
  resources :appserver_versions
  resources :appserverstatuses
  resources :appservers
  resources :environments
  resources :operatingsystems
  resources :operating_systems
  resources :app_codes
  get '/servers/getdata/' =>'servers#getddata', :as => :user
  get 'app_code/index'
  devise_for :users
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  #root "app_codes#index"
end
