class ArtistsController < ApplicationController

<<<<<<< HEAD
  def show
    @artist = Artist.find(params[:id])
    authorize @artist
  end
=======

  def new
    @artist = Artist.new
    authorize @artist
  end

  def create
    @artist = Artist.new(artist_params)
    authorize @artist
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :description, :address)
  end

>>>>>>> 18518f1a70a28ff09fafce10dd3309684dc41190
end
