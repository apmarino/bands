class BandsController < ApplicationController

  def index
    @bands = Band.all
  end
  
  def new
    @band = Bands.new
  end

  def create
    Band.create(band_params)
    redirect_to band_path
  end

  def show
    @band = Band.find(params[:id])
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    band = Band.find(params[:id])
    band.update(band_params)
    redirect_to band_path
  end

  def destroy
    band = Band.find(params[:id])
    band.destroy
    redirect_to band_path
  end

  private
  def band_params
    params.require(:band).permit(:name, :genre, :explicit_lyrics, :venue_id)
  end

end
