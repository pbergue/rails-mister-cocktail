class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail

    if @dose.save!
      redirect_to cocktail_doses_path(@cocktail.ingredients)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :cocktail_id, :description)
  end
end
