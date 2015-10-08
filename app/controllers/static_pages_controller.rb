class StaticPagesController < ApplicationController
  # Index is called landing_page in the course material
  def index
    @products = Product.limit(4)
  end

  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email,
        :to => 'chavez.agustin@outlook.com',
        :subject => "A new contact form message from #{@name}",
        :body => @message).deliver
end

  # def landing_page
  #   @products = Product.limit(3)
  # end
end