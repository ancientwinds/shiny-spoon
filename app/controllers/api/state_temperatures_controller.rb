class Api::StateTemperaturesController < ApplicationController

  # GET /state_temperatures
  def index
    @state_temperatures = StateTemperature.filter(filtering_params(params))
    json_response(@state_temperatures)
  end

  # GET /state_temperatures/1
  def show
    @state_temperature = StateTemperature.find(params[:id])
    json_response(@state_temperature)
  end

  private

  def filtering_params(params)
    params.slice(:state, :recordedAt, :averageTemperature, :start_date, :end_date)
  end
end