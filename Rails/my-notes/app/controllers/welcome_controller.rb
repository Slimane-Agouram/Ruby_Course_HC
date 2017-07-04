class WelcomeController < ApplicationController
    def hello
        puts "hello"
        render 'hello_world'
    end
end
