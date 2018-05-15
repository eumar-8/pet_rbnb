class PetsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(cocktail_params)
    if @pet.save
      redirect_to cocktail_path(@pet)
    else
      render :new
    end
  end


  def edit
  end

  def update
    @pet.update(cocktail_params)
    redirect_to cocktail_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :description, :age, :species)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end
end
