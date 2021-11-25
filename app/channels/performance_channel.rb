class PerformanceChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    performance = Performance.find(params[:id])
    stream_for performance
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
