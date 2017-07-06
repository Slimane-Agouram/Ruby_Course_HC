Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root'notes#index'
  #  #get "welcome/hello",to: "welcome#hello"
  #  get "welcome/hello(/:message)", to: "welcome#reponse",as: :hello_welcome

  #  get '/goodbye', to: "welcome#goodbye", as: :welcome_goodbye

  #  get '/notes', to: "notes#notes", as: :notes

  #  get '/notes/new', to: "notes#new", as: :new_note
   
  #  get '/notes(/:identifiant)', to: "notes#show", as: :note

  #  get '/notes/:identifiant/destroy', to: "notes#delete", as: :delete_note

  #  post '/notes', to: "notes#create", as: :note_create

  resources :notes, only: [:index,:new,:create,:show]

  get "welcome/hello/(:message)", to: "welcome#hello", as: :hello_welcome

   



end