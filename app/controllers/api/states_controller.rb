class Api::StatesController < ApplicationController

  # GET /states
  def index
    @states = StateTemperature.pluck(:state).uniq!
    json_response(@states)
  end
end