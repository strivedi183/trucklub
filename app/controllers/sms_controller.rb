class SmsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def receive
    message_body = params["body"]
    from_number = params["from"]
    t1 = Truck.where(:phone => from_number).first
    l1 = t1.locations.last
    l1.address = message_body.to_s
    l1.save
    render :nothing => true
  end
end