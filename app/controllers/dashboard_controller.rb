class DashboardController < ActionController::Base
  # GET /dashboard
  def index
    render html: { message: 'Hello' }
  end

  # GET /dashboard/1
  def show
    render html: { message: 'Hello 1' }
  end
end
