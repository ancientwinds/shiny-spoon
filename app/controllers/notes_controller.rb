class NotesController < ActionController::Base
  # GET /note
  def index
    @notes = Note.all.where(dashboard_id: params[:dashboard_id])
    render json: { message: @notes }
  end

  # GET /note/1
  def show
    @note = Note.find(params[:id])
    render json: { message: @note }
  end

  # POST /note
  def create
    @note = Dashboard.find(params[:dashboard_id]).notes.create!(note_params)
    render json: { message: @dashboard }
  end

  private

  def note_params
    params.require(:note).permit(:content)
  end
end
