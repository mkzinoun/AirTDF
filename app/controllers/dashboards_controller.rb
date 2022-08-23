class DashboardsController < ApplicationController

  def mydashboard
    @bikes = current_user.bikes
  end

end
