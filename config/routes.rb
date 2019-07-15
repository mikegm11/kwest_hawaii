Rails.application.routes.draw do
  resources :room_assignments
  resources :rooms
  resources :meals
  resources :meal_groups
  devise_for :kwestees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #LANDING PAGE route
  
  match("/", { :controller => "application", :action => "home", :via => "get" })
  
  
end
