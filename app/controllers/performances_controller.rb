class PerformancesController < ApplicationController

  def show
    @performance = Performance.find(params[:id])
    authorize @performance
  end

end
