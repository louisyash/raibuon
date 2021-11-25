class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
    authorize @artist
  end
end
