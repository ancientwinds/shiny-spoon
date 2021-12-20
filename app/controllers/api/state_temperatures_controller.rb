class Api::StateTemperaturesController < ApplicationController

  # GET /state_temperatures
  def index
    @state_temperatures = CountryTemperature.all
    json_response(@state_temperatures)
  end

  # GET /state_temperatures/1
  def show
    @state_temperature = StateTemperature.find(params[:id])
    json_response(@state_temperature)
  end
end