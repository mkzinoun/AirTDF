class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    if params[:query].present?
      @bikes = policy_scope(Bike).search_custom_bike(params[:query])
    else
      @bikes = policy_scope(Bike)
    end
  end

  def show
    @bike = Bike.find(params[:id])
    @markers = @bike.geocode.map do
      {
        lat: @bike.latitude,
        lng: @bike.longitude,
        info_window: render_to_string(partial: "info_window", locals: { bike: @bike }),
        image_url: helpers.asset_url("logo.png")
      }
    end
    if params[:booking_id]
      @booking = Booking.find(params[:booking_id])
    else
      @booking = Booking.new
    end
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
      flash[:notice] = "Your bike has been added to the rent bikes list"
      redirect_to bike_path(@bike)
    else
      flash[:alert] = "Error ! Your bike has not been added to the rent bikes list"
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @bike = Bike.find(params[:id])
    authorize @bike
  end

  def update
    @bike = Bike.find(params[:id])
    authorize @bike
    if @bike.update(bike_params)
      flash[:notice] = "Your bike has been updated"
    else
      flash[:alert] = "Error ! Your bike has not been updated"
    end
    redirect_to bike_path(@bike)
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
    authorize @bike
    flash[:notice] = "Bike has been destroyed"
    redirect_to bikes_path, status: :see_other
  end

  private

  def bike_params
    params.require(:bike).permit(:bike_type, :brand, :description, :address, :price_per_day, :photo)
  end
end
