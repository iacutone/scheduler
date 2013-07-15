Scheduler::Application.routes.draw do
  get "users/time" => 'users#time', :as => :time

  get "log_out" => "sessions#destroy", :as => "log_out", via: :delete
  get "log_in" => "sessions#new", :as => "log_in"

  resources :users 
  resources :sessions
  
  root :to => 'users#new'
end
