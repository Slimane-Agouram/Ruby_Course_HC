class NotesController < ApplicationController

def index
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


def note_params
    params.require(:note).permit(:title, :content)
end


def new
    @note = Note.new
    render "new"
end

def create
    puts params.inspect
    # created_note = Note.new
    # created_note.title = params[:note][:title]
    # created_note.content = params[:note][:content]
    Note.create note_params
    ap cookies


   
    redirect_to notes_path

end

end


