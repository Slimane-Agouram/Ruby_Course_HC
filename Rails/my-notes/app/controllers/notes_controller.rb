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
    @note = Note.new note_params
    @note.user = User.last

if @note.save
    flash[:notice] = "Note created successfully"
    redirect_to notes_path
else
    puts @note.errors.inspect
    puts "ALERT"
    
    flash[:alert] = "Problem occured while creating the note"
    puts flash[:alert]
    render 'new'

end
   
    #redirect_to notes_path

end

end


