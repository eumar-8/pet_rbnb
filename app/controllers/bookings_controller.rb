class BookingsController < ApplicationController

  def create
    @pet = Pet.find(params[:pet_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.pet = @pet

    if @booking.save
      flash[:notice] = "Booking was successful"
      redirect_to me_path
    else
      render :new
    end

  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date_from, :date_to)
  end
end
