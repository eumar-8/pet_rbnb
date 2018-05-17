class ProfileController < ApplicationController
  def show
  end

  def edit
  end

  def update
    location = params[:user][:location]
    name = params[:user][:name]
    photo
    current_user.location = location
    current_user.name = name
    current_user.save!
    redirect_to(profile_path(current_user))
  end
end
