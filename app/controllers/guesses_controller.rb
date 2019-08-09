class GuessesController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def blank_form
        render("pages/new_guess_form.html.erb")
    end
    
    def save_new_info
    @guess = Guess.new

    @guess.name = params.fetch("name")
    @guess.program = params.fetch("program")
    @guess.previous_job = params.fetch("previous_job")
    @guess.previous_city = params.fetch("previous_city")
    @guess.hometown = params.fetch("hometown")
    @guess.partner = params.fetch("partner")
    @guess.undergrad = params.fetch("undergrad")
    @guess.add_info = params.fetch("add_info")
    
    @guess.save

      redirect_to("/new_guess_form", { :notice => "Success!" })
    end
    
    def show_all
        @guess = Guess.all
        render("pages/listguess.html.erb")
    end
    
    
    def list


    end
    
    
end
