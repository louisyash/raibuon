class StripeCheckoutSessionService
  def call(event)
    ac = ActionController::Base.new()
    tip = Tip.find_by(checkout_session_id: event.data.object.id)
    tip.update(state: 'paid')
  end
end
