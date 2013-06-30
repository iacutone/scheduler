Scheduler::Application.routes.draw do

	  # get "log_out" => "sessions#destroy", :as => "log_out"
  # get "log_in" => "sessions#new", :as => "log_in"
  # get "sign_up" => "users#new", :as => "sign_up"
  # get "/profiles" => "profiles#index", :as => "index" 
  # post "/profiles/:id" => "profiles#show", :as => "profiles" 

	# match "/users/:id" => "users#time1", :as => "time1" 
  # get "/users/:id" => "users#time1", :as => "time1" 
  # get "/users/:id" => "users#update" 
  get "users/time" => 'users#time', :as => :time

  resources :users 
  
  root :to => 'users#new'
end
