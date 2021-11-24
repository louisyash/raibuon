class PaymentsController < ApplicationController
  def new
    @tip = current_user.tip.where(state: 'pending').find(params[:tip_id])
  end
end
