class SmsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def receive
    message_body = params["Body"]
    from_number = params["From"]
    truck = Truck.where(:phone => from_number).first
    location = truck.locations.last
    location.address = message_body
    location.save
    render :nothing => true
  end
end