class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    animal_species = params[:animal].singularize
    # raise params[:animal].singularize.inspect
    if params[:animal].present? && Pet.exists?(species: animal_species)
      @pets = Pet.where(species: animal_species)
    elsif params[:animal].present? && Pet.exists?(species: animal_species) == false
      flash[:alert] = "Sorry we don't have #{params[:animal]}"
      redirect_to root_path
    else
      @pets = Pet.all
    end

    @markers = @pets.map do |pet|
      {
        lat: pet.user.latitude,
        lng: pet.user.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @pet = Pet.find(params[:id])
    @booking = Booking.new
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end


  def edit
  end

  def update
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :description, :age, :species, :price, :photo)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
