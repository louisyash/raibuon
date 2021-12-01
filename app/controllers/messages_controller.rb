class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @performance =  Performance.find(params[:performance_id])
    @message.performance = @performance
    @messages = @performance.messages.order(created_at: :desc)
    tips = @performance.tips
    @messages_tips = (@messages + tips).sort_by(&:created_at).reverse
    authorize @message
    if @message.save
      PerformanceChannel.broadcast_to(
        @performance,
        message: render_to_string(partial: "message", locals: { message: @message }), id: @message.id
      )
      respond_to do |format|
        format.html { redirect_to performance_path(@performance)}
        format.js
      end
    else
        respond_to do |format|
        format.html { render 'performances/show' }
        format.js{ head :ok }
      end
    end
  end

  private


  def message_params
    params.require(:message).permit(:content, :photo)
  end
end
