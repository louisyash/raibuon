class PerformancesController < ApplicationController
  def index
    @performances = policy_scope(Performance).order(created_at: :desc)
    if params[:query].present?
      @performances = @performances.where("address ILIKE ?", "%#{params[:query]}%")
    end

    @tips = Tip.all
    @artist_ranking = Artist.order_by_tips

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
    @tip = Tip.new
    @messages = @performance.messages.order(created_at: :desc)
    # @tips = @performance.tips.where(state: "paid").order(created_at: :desc) anju needs to check it
    tips = @performance.tips.order(created_at: :desc)
    @messages_tips = (@messages + tips).sort_by(&:created_at).reverse
    authorize @performance
  end

  def new
    @performance = Performance.new
    authorize @performance
  end

  def create
    @performance = Performance.new(performance_params)
    authorize @performance
    if @artist = Artist.find_by(user_id: current_user.id)
      @performance.artist = @artist
      if @performance.save
        redirect_to performances_path
        return
      else
        render :new
      end
    else
      redirect_to performances_path, notice: "You must be an artist to perform this action"
    end
  end

  private

  def performance_params
    params.require(:performance).permit(:name, :description, :address, :start_time, :end_time)
  end
end
