class Api::V1::VesselsController < ApplicationController
  def index
    @vessel = Vessel.all
    render json: @vessel
  end
end
