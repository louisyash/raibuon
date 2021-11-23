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
      redirect_to performance_path(@performance)
    else
      render :new
    end
  end

  private

  def tip_params
    params.require(:tip).permit(:amount)
  end

end
