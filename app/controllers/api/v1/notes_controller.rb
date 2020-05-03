class Api::V1::NotesController < ApplicationController
  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    note = Note.create(note_params)
    render json: {note: NoteSerializer.new(note)}
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    render json: {message: "Note removed"}
  end

  private

  def note_params
    params.require(:note).permit(:text, :project_id, :day_id)
  end
end
