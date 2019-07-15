class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
    def home
        render("pages/home.html.erb")
    end
    
    def itinerary
        render("pages/itinerary.html.erb")
    end
  
    def kwestees
      render("pages/kwestees.html.erb")
    end
  
    def packinglist
      render("pages/packinglist.html.erb")
    end
  
end
