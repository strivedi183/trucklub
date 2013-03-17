class EatersController < ApplicationController
  def create_code
    user_code = params[:code]
    todays_locations = Location.where("created_at >= ?", Time.zone.now.beginning_of_day)
    secret_codes = todays_locations.map(&:secret_code)
    if user_code.in?secret_codes
      eater = Eater.find(params[:id])
      meal = Meal.create
      location = Location.where(:secret_code => user_code).first
      meal.truck_id = location.truck_id
      eater.meals << meal
      render :create_code
    else
      render :error
    end
  end
end