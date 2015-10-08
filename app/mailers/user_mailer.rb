class UserMailer < ActionMailer::Base
  default from: "hello@bikeberlin.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
            :to => 'your-email@example.com',
            :subject => "A new contact form message from #{name}")
  end

  def order_confirmation(user)
    @user = user
    mail(to: user.email, subject: 'Order has been received!')
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    UserMailer.contact_form(@email, @name, @message).deliver
  end

end
