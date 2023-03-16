# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ENV['SMTP_USERNAME'] = "sisir@blueinsight.digital"
ENV['SMTP_PASSWORD'] = "OLZhTQUJvMwWHd4s"

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.smtp_settings = {
    address: "smtp.gmail.com",
    port: 465,
    domain: "gmail.com",
    user_name: "khanshohaib400@gmail.com",
    password: "sduiyorvdyqvhvzc",
    authentication: 'plain',
    :ssl => true,
    :tsl => true,
    enable_starttls_auto: true

}