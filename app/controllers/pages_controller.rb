class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @pets = Pet.all.limit(6)
  end

  def desig
  end
end
