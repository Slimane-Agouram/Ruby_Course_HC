Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root'welcome#hello'
   #get "welcome/hello",to: "welcome#hello"
   get "welcome/hello(/:message)", to: "welcome#reponse",as: :hello_welcome

   get '/goodbye', to: "welcome#goodbye"

   get '/notes', to: "notes#notes", as: :index_notes

   get '/notes/new', to: "notes#new", as: :new_note
   
   get '/notes(/:identifiant)', to: "notes#show", as: :show_notes

   get '/notes/:identifiant/destroy', to: "notes#delete", as: :delete_note

   



end