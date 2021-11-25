class PerformancesController < ApplicationController

  def index
    @performances = policy_scope(Performance).order(created_at: :desc)
    if params[:query].present?
      @performances = @performances.where("name ILIKE ?", "%#{params[:query]}%")
    end
    authorize @performances
  end

  def show
    @performance = Performance.find(params[:id])
    @message = Message.new
    @performance.artist = @performance.artist
    @messages = @performance.messages.order(created_at: :desc)
    authorize @performance
  end
end
