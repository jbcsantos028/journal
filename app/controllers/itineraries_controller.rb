class ItinerariesController < ApplicationController

  def show
    @itinerary = Itinerary.find(params[:id])
  end

  def index
    @itineraries = Itinerary.all
  end

  def new
    @itinerary = Itinerary.new
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
  end

  def create
    @itinerary = Itinerary.new(params.require(:itinerary).permit(:location, :detail))
    if @itinerary.save
      flash[:notice] = "Itinerary was created successfully."
      redirect_to itinerary_path(@itinerary)
    else
      render 'new'
    end
  end

  def update
    @itinerary = Itinerary.find(params[:id])
    if @itinerary.update(params.require(:itinerary).permit(:location, :detail))
      flash[:notice] = "Itinerary was update successfully."
      redirect_to itinerary_path(@itinerary)
    else
      render 'edit'
    end
  end

end
