class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new

  end

  def create
    location = params[:location]
    if location.present?
      user = User.create(params[:user])
      eater = Eater.create(:location => params[:location])
      eater.user = user
      eater.save
    end
    redirect_to trucks_path
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

end