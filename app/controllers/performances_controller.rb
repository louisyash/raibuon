class PerformancesController < ApplicationController

  def index
    # @performances = policy_scope(Performance).order(created_at: :desc)
    # authorize @performances
    if params[:query].present?
      @performances = policy_scope(Performance).order(created_at: :desc)
      @performances_filtered = @performances.where("name ILIKE ?", "%#{params[:query]}%")
      authorize @performances
    else
      @performances = policy_scope(Performance).order(created_at: :desc)
      authorize @performances
    end
  end

  def show
    @performance = Performance.find(params[:id])
    @performance.artist = @performance.artist
    authorize @performance
  end
end
