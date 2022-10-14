class ItinerariesController < ApplicationController
  before_action :set_itinerary, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @itineraries = Itinerary.all
  end

  def new
    @itinerary = Itinerary.new
  end

  def edit
  end

  def create
    @itinerary = Itinerary.new(itinerary_params)
    if @itinerary.save
      flash[:notice] = "Itinerary was created successfully."
      redirect_to itinerary_path(@itinerary)
    else
      render 'new'
    end
  end

  def update
    if @itinerary.update(itinerary_params)
      flash[:notice] = "Itinerary was updated successfully."
      redirect_to itinerary_path(@itinerary)
    else
      render 'edit'
    end
  end

  def destroy
    @itinerary.destroy
    redirect_to itineraries_path
  end

  private

  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:location, :detail)
  end


end
