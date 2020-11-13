class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    # @cocktail = Cocktail.find(params[:cocktail_id])
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)

  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id)
  end
end
