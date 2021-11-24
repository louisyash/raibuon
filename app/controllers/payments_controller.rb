class PaymentsController < ApplicationController
  def new
    @performance = Performance.find(params[:performance_id])
    @tip = Tip.find(params[:tip_id])
    authorize @tip
  end
end
