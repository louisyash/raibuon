class PaymentsController < ApplicationController
  def new
    @tip = Tip.find(params[:tip_id])
    @performance = @tip.performance
    authorize @tip
  end
end
