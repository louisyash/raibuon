class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @performance =  Performance.find(params[:performance_id])
    @message.performance = @performance
    authorize @message
    if @message.save
      PerformanceChannel.broadcast_to(
        @performance,
        render_to_string(partial: "message", locals: { message: @message })
      )
      # redirect_to performance_path(@performance)
    else
      render 'performances/show'
    end
  end

  private


  def message_params
    params.require(:message).permit(:content)
  end
end
