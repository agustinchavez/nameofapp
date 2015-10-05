# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#Sendgrid plugin to send out emails from Heroku
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['app41447431@heroku.com'],
  :password => ENV['Guti1991'],
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}