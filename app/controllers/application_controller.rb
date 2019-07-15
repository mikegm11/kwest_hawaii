class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
    def home
        render("pages/home.html.erb")
    end
  
end
