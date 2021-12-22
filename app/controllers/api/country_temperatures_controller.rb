class Api::CountryTemperaturesController < ApplicationController

  # GET /country_temperatures
  def index
    @country_temperatures = CountryTemperature.filter(filtering_params(params)
    json_response(@country_temperatures)
  end

  # GET /country_temperatures/1
  def show
    @country_temperature = CountryTemperature.find(params[:id])
    json_response(@country_temperature)
  end

  private

  def filtering_params(params)
    params.slice(:country, :recordedAt, :averageTemperature, :start_date, :end_date)
  end
end