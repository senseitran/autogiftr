class DeliveryNotificationMailer < ActionMailer::Base
  default from: "dave@example.com"


  def notify(occaision)
    @occaision = occaision
    @user = @occaision.recipient.user
    mail(to: @occaision.recipient.user.email, subject: 'Your delivery has been sent')
  end
end
