Rails.application.routes.draw do
  resources :guesses
  resources :room_assignments
  resources :rooms
  resources :meals
  resources :meal_groups
  devise_for :kwestees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #LANDING PAGE route
  
  match("/", { :controller => "application", :action => "home", :via => "get" })
  
  match("/itinerary",{ :controller => "application", :action => "itinerary", :via => "get" } )
  
  match("/kwestees", { :controller => "application", :action => "kwestees", :via => "get" }  )
  
  match("/packinglist", {:controller => "application", :action => "packinglist", :via => "get" })
  
  match("/bigreveal", {:controller => "application", :action=> "bigreveal", :via => "get"})
  
  match("/new_guess_form", { :controller => "guesses", :action => "blank_form", :via => "get" })
  match("/insert_guess_record", { :controller => "guesses", :action => "save_new_info", :via => "post" })  
  match("/guesses/:name", {:controller => "guesses", :action => "list", :via => "get"})
  
end
