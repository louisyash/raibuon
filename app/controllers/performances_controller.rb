class PerformancesController < ApplicationController

  def index
    @performances = Performance.all
  end

  def show
    @performance = Performance.find(params[:id])
    @performance.artist = @performance.artist
    authorize @performance
  end
end
