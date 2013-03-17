class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
    @locations = Location.all
  end
  def show
    @truck = Truck.find(params[:id])
  end
end