class StripeCheckoutSessionService
  def call(event)
    ac = ActionController::Base.new()
    tip = Tip.find_by(checkout_session_id: event.data.object.id)
    tip.update(state: 'paid')
    PerformanceChannel.broadcast_to(
      tip.performance,
      message: ac.render_to_string(partial: "tips/tip", locals: { tip: tip })
    )
    PerformanceChannel.broadcast_to(
      tip.performance,
      tip: ac.render_to_string(partial: "tips/amount", locals: { amount: tip.performance.tips.where(state: "paid").sum(:amount_cents) })
    )
  end
end
