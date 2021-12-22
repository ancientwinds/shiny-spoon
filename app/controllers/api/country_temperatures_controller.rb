class Api::CountryTemperaturesController < ApplicationController

  # GET /country_temperatures
  def index
    @country_temperatures = CountryTemperature.all
    json_response(@country_temperatures)
  end

  # GET /country_temperatures/1
  def show
    @country_temperature = CountryTemperature.find(params[:id])
    json_response(@country_temperature)
  end
end