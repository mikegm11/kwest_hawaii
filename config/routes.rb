Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #LANDING PAGE route
  
  match("/", { :controller => "application", :action => "home", :via => "get" })
  
  
end
