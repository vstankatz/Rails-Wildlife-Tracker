class AnimalsController < ApplicationController

  # Code for listing all animals goes here.
  def index
    @animals = Animal.all
    render :index
  end


  # Code for new animal form goes here.
  def new
    @animal = Animal.new
    render :new
  end


  # Code for creating a new animal goes here.
  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to animals_path
    else
      render :new
    end
  end


    # Code for edit animal form goes here.
    def edit
      @animal = Animal.find(params[:id])
      render :edit
    end

    # Code for showing a single animal goes here.
    def show
        @animal = Animal.find(params[:id])
        render :show
      end

    # Code for updating an animal goes here.
    def update
      @animal= Animal.find(params[:id])
      if @animal.update(animal_params)
        redirect_to animals_path
      else
        render :edit
      end
    end

  def destroy
    # Code for deleting an animal goes here.
  end

##It's important that we include this code at the end of the class (just above the final end); we wouldn't want to accidentally make any of our controller actions private.
  private
    def animal_params
      params.require(:animal).permit(:name)
      ##This is the template "params.require(:<name-of-class>).permit(:<name-of-parameters-to-accept-separated-by-commas)""
    end
  end
