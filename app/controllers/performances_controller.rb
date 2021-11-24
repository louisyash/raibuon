class PerformancesController < ApplicationController

  def index
    @performances = policy_scope(Performance).order(created_at: :desc)
    if params[:query].present?
      @performances = @performances.where("name ILIKE ?", "%#{params[:query]}%")
    end
    # authorize @performances # allow public access to performance index - no login
  end

  def show
    @performance = Performance.find(params[:id])
    @performance.artist = @performance.artist
    @performance.messages = @performance.messages
    # authorize @performance
  end
end
