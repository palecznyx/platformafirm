class MessagesController < ApplicationController
  def prepare_send
    @message = Message.new
  end

  def send_email
    @message = Message.new(message_params)
    @mailer = MessageMailer.send_email(@message)

    if @mailer.deliver
      redirect_to root_path, notice: 'Email został wysłany.'
    else
      render :prepare_send
    end
  end

  private
    def message_params
      params.require(:message).permit(:to, :content)
    end
end
