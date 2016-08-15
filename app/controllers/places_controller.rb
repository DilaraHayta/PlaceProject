class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :update, :edit, :destroy]

  def new
    @place=Place.new
    load_categories

  end
  def index
    @places=Place.all
  end

  def show
  end

  def create
    @place=Place.new(place_params)
    if @place.save
      flash[:success]='İşlem başarıyla tamamlandı!'
      redirect_to place_path(@place)
    else
      load_categories
      render :new
    end
  end

  def edit
    load_categories

  end

  def update
    if @place.update(place_params)
      redirect_to place_path(@place)
    else
      load_categories
      render :edit
    end

  end

  def destroy
    @place.destroy
    redirect_to places_path
  end

  private

  def load_categories
    @categories = Category.all.collect {|c| [c.name, c.id ] }
  end

  def set_place
    @place=Place.find(params[:id])
  end

  def place_params
    params.require(:place).permit(:name, :adress, :phone_number, :contact_mail, :established_at, :city, :description , :category_id)
  end

end
