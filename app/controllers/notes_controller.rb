class NotesController < ActionController::Base
  # GET /note
  def index
    @notes = Note.all.where(dashboard_id: params[:dashboard_id])
    render json: { message: @notes, status: :ok }
  end

  # GET /note/1
  def show
    @note = Note.find(params[:id])
    render json: { message: @note, status: :ok }
  end

  # POST /note
  def create
    @note = Dashboard.find(params[:dashboard_id]).notes.create!(note_params)
    @note.save ? (render json: { message: @note, status: :ok }) : (render json: { message: @note.errors, status: :unprocessable_entity })
    NoteChannel.broadcast_to(@note.dashboard, @note)
  end

  private

  def note_params
    params.require(:note).permit(:content)
  end
end
