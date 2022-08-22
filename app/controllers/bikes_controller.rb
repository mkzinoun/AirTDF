class BikesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def bike_params
    params.require(:bike).permit(:type, :brand, :description, :address, :price_per_day)
  end
end
