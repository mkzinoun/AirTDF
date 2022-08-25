class BookingsController < ApplicationController

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bike = @bike
    @booking.status = 'pending'
    @booking.total_price = @bike.price_per_day * (params[:booking][:end_date].to_date - params[:booking][:start_date].to_date)
    @booking.save
    authorize @booking, policy_class: BookingPolicy

    redirect_to dashboard_path
  end

  def update
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.find(params[:id])
    @booking.status = 'pending'
    @booking.total_price = @bike.price_per_day * (params[:booking][:end_date].to_date - params[:booking][:start_date].to_date)
    @booking.update(booking_params)
    authorize @booking, policy_class: BookingPolicy
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking, policy_class: BookingPolicy
    @booking.destroy
    redirect_to dashboard_path, status: :see_other
  end

  def accept
    @booking = Booking.find(params[:id])
    authorize @booking, policy_class: BookingPolicy
    @booking.status = 'accepted'
    if @booking.save
      redirect_to dashboard_path
    end
  end

  def refuse
    @booking = Booking.find(params[:id])
    authorize @booking, policy_class: BookingPolicy
    @booking.status = 'refused'
    if @booking.save
      redirect_to dashboard_path
    end
  end

  def cancel
    @booking = Booking.find(params[:id])
    authorize @booking, policy_class: BookingPolicy
    @booking.status = 'cancelled'
    if @booking.save
      redirect_to dashboard_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
