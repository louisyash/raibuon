class PerformancesController < ApplicationController

  def index
    @performances = policy_scope(Performance).order(created_at: :desc)
    if params[:query].present?
      @performances = @performances.where("name ILIKE ?", "%#{params[:query]}%")
    end
    authorize @performances

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'performances/list', locals: { performances: @performances }, formats: [:html] }
    end
  end

  def show
    @performance = Performance.find(params[:id])
    @message = Message.new
    @performance.artist = @performance.artist
    @performance.messages = @performance.messages
    authorize @performance
  end
end
