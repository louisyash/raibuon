class ArtistsController < ApplicationController


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
