class MessageMailer < ApplicationMailer

  def send_email(message)
    @content = message.content

    mail(from: 'admin@platformafirm.pl', to: message.to)
  end
end
