class BikesController < ApplicationController
  def index
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def new
  end
end
