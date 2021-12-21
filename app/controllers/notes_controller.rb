class NotesController < ActionController::Base
  # GET /note
  def index
    render html: { message: 'Hello' }
  end

  # GET /note/1
  def show
    render html: { message: 'Hello 1' }
  end
end
