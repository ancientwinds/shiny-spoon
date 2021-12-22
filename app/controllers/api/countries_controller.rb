class Api::CountriesController < ApplicationController

  # GET /countries
  def index
    @countries = CountryTemperature.pluck(:country).uniq!
    json_response(@countries)
  end
end