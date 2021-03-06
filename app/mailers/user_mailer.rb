class UserMailer < ApplicationMailer
  default from: "shop@bikeberlin.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
    to: 'allicndev@gmail.com',
    subject: "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Bike"
    mail(to: user.email, subject: "Welcome to #{@appname}!")
  end
end
