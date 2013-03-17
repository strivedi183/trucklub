class SmsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def receive
    message_body = params["Body"]
    from_number = params["From"]
    truck = Truck.where(:phone => from_number)
    truck = Truck.update(:address => message_body)
    truck.save
  end
end