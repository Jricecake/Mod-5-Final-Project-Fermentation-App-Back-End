class Api::V1::IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    render json {ingredients: @ingredients}
  end

  def create
    @ingredient = Ingredient.create(ingredient_params)
    render json: @ingredient
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity, :units, :prep, :id)
  end

end
