class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
    @locations = Location.all
  end
end