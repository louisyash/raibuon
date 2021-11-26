class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
    authorize @artist
  end


  def new
    @artist = Artist.new
    authorize @artist
  end

  def create
    @artist = Artist.new(artist_params)

  end

  private

  def artist_params
    params.require(:artist).permit(:name, :description, :address)
  end

end
