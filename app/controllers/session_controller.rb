class SessionController < ApplicationController
  def new
  end

  def create
    @auth = User.where(:email => params[:email]).first
    if @auth.present? && @auth.authenticate(params[:password])
      session[:user_id] = @auth.id
      if @auth.is_eater?.present?
        redirect_to trucks_path
      else @auth.is_truck?.present?
        truck = Truck.find(@auth.userable.id)
        redirect_to(truck)
      end
    else
      session[:user_id] = nil
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end