class NotesController < ApplicationController

def notes
    @mes_notes = Note.all
    render "index"

end

def show
    begin
    @identifiant =params[:identifiant]
    @ma_note = Note.find(@identifiant)
rescue ActiveRecord::RecordNotFound => e
        @ma_note = nil        
    end
render "show"

end

end


