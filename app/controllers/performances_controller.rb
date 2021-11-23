class PerformancesController < ApplicationController

  def index
    @performances = policy_scope(Performance).order(created_at: :desc)
    authorize @performances
  end

  def show
    @performance = Performance.find(params[:id])
    @performance.artist = @performance.artist
    @performance.messages = @performance.messages
    authorize @performance
  end
end
