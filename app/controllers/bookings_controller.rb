class BookingsController < ApplicationController

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bike = @bike
    @booking.status = 'pending'
    @booking.total_price = @bike.price_per_day * (params[:booking][:end_date].to_date - params[:booking][:start_date].to_date)
    authorize @booking, policy_class: BookingPolicy
    if @booking.save
      flash[:notice] = " Your booking request has been sent to the owner"
      redirect_to dashboard_path
    else
      flash[:alert] = " a problem has occurred while processing your booking."
      redirect_to bike_path(@bike)
    end
  end

  def update
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.find(params[:id])
    @booking.status = 'pending'
    @booking.total_price = @bike.price_per_day * (params[:booking][:end_date].to_date - params[:booking][:start_date].to_date)
    authorize @booking, policy_class: BookingPolicy
    if @booking.update(booking_params)
      flash[:notice] = "Your booking request has been updated"
      redirect_to dashboard_path
    else
      flash[:alert] = "Error ! Not updated"
      redirect_to bike_path(@bike)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking, policy_class: BookingPolicy
    @booking.destroy
    flash[:notice] = "Your booking has been cancelled"
    redirect_to dashboard_path, status: :see_other
  end

  def accept
    @booking = Booking.find(params[:id])
    authorize @booking, policy_class: BookingPolicy
    @booking.status = 'accepted'
    if @booking.save
      flash[:notice] = "You accepted this booking request"
      redirect_to dashboard_path
    end
  end

  def refuse
    @booking = Booking.find(params[:id])
    authorize @booking, policy_class: BookingPolicy
    @booking.status = 'refused'
    if @booking.save
      flash[:alert] = "You declined this booking request"
      redirect_to dashboard_path
    end
  end

  def cancel
    @booking = Booking.find(params[:id])
    authorize @booking, policy_class: BookingPolicy
    @booking.status = 'cancelled'
    if @booking.save
      flash[:alert] = "Your booking request has been cancelled"
      redirect_to dashboard_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
