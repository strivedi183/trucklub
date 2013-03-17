class SmsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def receive
    message_body = params["body"]
    from_number = params["from"]
    truck = Truck.where(:phone => from_number).first
    location = truck.locations.last
    location.address = message_body
    location.save
    render :nothing => true
  end
end