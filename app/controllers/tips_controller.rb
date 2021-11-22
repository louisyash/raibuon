class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :tip ]

  def new
    @tip = Tip.new
    authorize @tip
  end

  def create
    @tip = Tip.new(tip_params)

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
