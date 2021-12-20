class DashboardController < ActionController::Base
  # GET /dashboard
  def index
    render html: { message: 'Hello' }
  end
end
