class Api::V1::BrinesController < ApplicationController
  def index
    @brine = Brine.all
    render json: @brine
end
