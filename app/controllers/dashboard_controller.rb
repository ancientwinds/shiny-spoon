class DashboardController < ActionController::Base
  # GET /dashboard
  def index
    render html: { message: 'Hello' }
  end

  # GET /dashboard/1
  def show
    @dashboard = Dashboard.find(params[:id])
    render json: { message: @dashboard }
  end

  # POST /dashboard
  def create
    @dashboard = Dashboard.create!(dashboard_params)
    render json: { message: @dashboard }
  end

  private

  def dashboard_params
    params.require(:dashboard)
  end
end
