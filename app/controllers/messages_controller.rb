class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)
    @message.user = current_user
    @performance =  Performance.find(params[:performance_id])
    @message.performance = @performance
    authorize @message
    if @message.save
      redirect_to performance_path(@performance)
    end
  end

  private


  def message_params
    params.require(:message).permit(:content)
  end
end
