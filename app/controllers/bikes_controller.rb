class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @bikes = policy_scope(Bike)
  end

  def show
    @bike = Bike.find(params[:id])
    authorize @bike
  end

  def new
    @bike = Bike.new
    authorize @bike
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    authorize @bike
    if @bike.save
      redirect_to bike_path(@bike)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @bike
    @bike = Bike.find(params[:id])
  end

  def update
    authorize @bike
    @bike = Bike.find(params[:id])
    @bike.update(bike_params)

    redirect_to bike_path(@bike)
  end

  def destroy
    authorize @bike
    @bike = Bike.find(params[:id])
    @bike.destroy

    redirect_to bikes_path, status: :see_other
  end

  private

  def bike_params
    params.require(:bike).permit(:bike_type, :brand, :description, :address, :price_per_day, :photo)
  end
end
