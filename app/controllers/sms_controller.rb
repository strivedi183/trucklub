class SmsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def receive
    binding.pry
    message_body = params["Body"]
    from_number = params["From"]
    puts params
    puts params[:from]
    puts from_number
    # truck = Truck.where(:phone => from_number)
    # truck.title = params["Body"]
    # truck.save
  end
end