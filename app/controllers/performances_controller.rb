class PerformancesController < ApplicationController
  def index
    @performances = policy_scope(Performance).order(created_at: :desc)
    if params[:query].present?
      @performances = @performances.where("address ILIKE ?", "%#{params[:query]}%")
    end

    @markers = @performances.geocoded.map do |performance|
      {
        lat: performance.latitude,
        lng: performance.longitude,
        info_window: render_to_string(partial: "shared/info_window", locals: { performance: performance })
      }
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
    @performance.tips.find(params['tip_id']).update(state: 'paid') if params['result'] == 'success'
    PerformanceChannel.broadcast_to(
      @performance,
      tip: render_to_string(partial: "tips/amount", locals: { amount: @performance.tips.where(state: "paid").sum(:amount_cents) })
    )

    @message = Message.new
    @performance.artist = @performance.artist
    @tip = Tip.new
    @messages = @performance.messages.order(created_at: :desc)
    tips = @performance.tips.where(state: "paid").order(created_at: :desc)
    # tips = @performance.tips.order(created_at: :desc)
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
    params.require(:performance).permit(:name, :description, :address, :start_time, :end_time, :result, :tip_id)
  end
end
