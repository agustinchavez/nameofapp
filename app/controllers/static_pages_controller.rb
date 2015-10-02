class StaticPagesController < ApplicationController
  def index
    @products = Product.all
  end

  def landing_page
    @featured_product = Product.all
    @products = Product.limit(3)
  end

  ActionMailer::Base.mail(:from => 'from@domain.com', :to => 'to@domain.com', :subject => "Welcome to My Awesome Site", :body => 'I am the email body.').deliver

def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
        :to => 'chavez.agustin@outlook.com',
        :subject => "A new contact form message from #{@name}",
        :body => @message).deliver
end

end

