class TipsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :tip ]

  def new
    @tip = Tip.new
    @performance = Performance.find(params[:performance_id])
    authorize @tip
  end

  def create
    @tip = Tip.new(tip_params)
    @performance = Performance.find(params[:performance_id])
    @tip.performance = @performance

    @tip.user = current_user
    authorize @tip

    if @tip.save
      flash[:notice] = "Thank you for tipping #{@performance.artist.name}!"
      redirect_to performance_path(@performance)
    else
      render :new
    end
  end

  private

  def tip_params
    if params[:tip][:custom_amount].present?
      params[:tip][:amount] = params[:tip][:custom_amount]
    end
    params.require(:tip).permit(:amount)
  end
end
