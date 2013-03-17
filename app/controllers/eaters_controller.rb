class EatersController < ApplicationController
  def create_code
    user_code = params[:code]
    todays_locations = Location.where("created_at >= ?", Time.zone.now.beginning_of_day)
    secret_codes = todays_locations.map(&:secret_code)
    if user_code.in?secret_codes
      Meal.create()
      render :create_code

    else
      render :error
    end
  end
end