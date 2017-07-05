class WelcomeController < ApplicationController
    def hello
        @message=params[:message]
    end

    def reponse
        puts 'json==========='
        render json:{toto:'toto'}
    end

    def goodbye
        puts 'goodbye==========='
        render "goodbye"
    end


   
end
