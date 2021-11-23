class PerformancesController < ApplicationController

  def show
    @performance = Performance.find(params[:id])
    @performance.artist = @performance.artist
    authorize @performance
  end

end
