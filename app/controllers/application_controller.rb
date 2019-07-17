class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
    def home
      a = Time.zone.today.to_s
      if a == Date.parse("July 15 2020").to_s
        render("pages/home1.html.erb")
      elsif a == Date.parse("July 16 2019").to_s
        render("pages/home2.html.erb")
      else
        render("pages/homeerror.html.erb")
      end
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
