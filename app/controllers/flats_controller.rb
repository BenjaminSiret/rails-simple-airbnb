class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def create
    @flat = Flat.new(params[:flat_params])
    @flat.save
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address)
  end
end
