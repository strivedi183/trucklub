class SmsController < ApplicationController
  def receive
    message_body = params["Body"]
    from_number = params["From"]
    truck = Truck.where(:phone => from_number)
    truck.title = params["Body"]
    truck.save
  end
end