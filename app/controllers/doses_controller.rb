class DosesController < ApplicationController
  def new
    @doses = Dose.new
    # @ingredients = Ingredient.all
  end

  def create
    # @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def destroy
  end
end
