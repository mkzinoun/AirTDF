class BookingsController < ApplicationController

  def create

    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bike = @bike
    @booking.status = 'pending'
    @booking.total_price = @bike.price_per_day * (params[:booking][:end_date].to_date - params[:booking][:start_date].to_date)
    @booking.save
    redirect_to bike_path(@bike)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
