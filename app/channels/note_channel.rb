class NoteChannel < ApplicationCable::Channel
  def subscribed
    dashboard = Dashboard.find(params[:id])
    stream_for dashboard
  end
end