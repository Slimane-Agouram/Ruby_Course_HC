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

def delete
    begin
    @identifiant=params[:identifiant]
    Note.destroy(@identifiant) 
    rescue ActiveRecord::RecordNotFound => e
    puts "deleting nonexistant note"
    end

    redirect_to index_notes_path
end


def new
    render "new"
end

end


