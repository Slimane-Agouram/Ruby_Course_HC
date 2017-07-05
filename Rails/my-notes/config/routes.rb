Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root'welcome#hello'
   #get "welcome/hello",to: "welcome#hello"
   get "welcome/hello/:message", to: "welcome#reponse"

   get '/goodbye', to: "welcome#goodbye"

end
