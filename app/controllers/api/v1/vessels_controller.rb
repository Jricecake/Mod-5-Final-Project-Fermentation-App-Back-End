class Api::V1::VesselsController < ApplicationController
  def index
    @vessel = Vessel.all
    render json: @vessel
  end

  def create
    vessel = Vessel.create(vessel_params)
    render json: vessel
  end

  private
  def vessel_params
    params.require(:vessel).permit(:vessel, :volume, :units, :airlock, :weight, :material, :notes, :id)
  end
end
