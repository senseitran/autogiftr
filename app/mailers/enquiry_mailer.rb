class EnquiryMailer < ActionMailer::Base
  default from: "sensei.tran@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.response.subject
  #
  def response(enquiry)
    @enquiry = enquiry
    mail(to: @enquiry.email, subject: "Your enquiry has been received")
end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.received.subject
  #
  def received(enquiry)
    @enquiry = enquiry
    mail(to: "sensei.tran@gmail.com", subject: "An enquiry has been received.")
  end
end
