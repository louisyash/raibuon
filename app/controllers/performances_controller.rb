class PerformancesController < ApplicationController

  def index
    @performances = Performance.all
  end

  def show
    @performance = Performance.find(params[:id])
    authorize @performance
  end
end
