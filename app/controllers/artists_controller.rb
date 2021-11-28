class ArtistsController < ApplicationController

<<<<<<< HEAD
=======
  def show
    @artist = Artist.find(params[:id])
    authorize @artist
  end

>>>>>>> b82025d9288b12b196069fba590d9b9d20c8df0f

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

end
