class TipsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :tip ]

  def show
  @tip = Tip.find(params[:id])
  @performance = @tip.performance
  authorize @tip
  end

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
      # flash[:notice] = "Thank you for tipping #{@performance.artist.name}!"
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: "performance tip",
          amount: @tip.amount_cents,
          currency: 'jpy',
          quantity: 1,
        }],
        success_url: performance_url(@performance),
        cancel_url: performance_url(@performance)
      )
      @tip.update(checkout_session_id: session.id, state: "pending")
      redirect_to new_tip_payment_path(@tip)
    else
      render :new
    end
  end




  private

  def tip_params
    if params[:tip][:custom_amount].present?
      params[:tip][:amount] = params[:tip][:custom_amount]
    end
    params.require(:tip).permit(:amount, :state)
  end
end
