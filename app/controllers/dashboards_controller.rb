class DashboardsController < ApplicationController

  def mydashboard
    @bikes = current_user.bikes
    authorize @bikes

    @user_own_bookings = Booking.where(user_id: current_user)

    @rented_out_by_user = current_user.requested_bikes.where.not(status: "refused").where.not(status: "cancelled")

  end

end
