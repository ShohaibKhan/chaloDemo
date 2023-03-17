# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!


# ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.perform_deliveries = true
# ActionMailer::Base.smtp_settings = {
#     address: "smtp.gmail.com",
#     port: 465,
#     domain: "gmail.com",
#     user_name: "khanshohaib400@gmail.com",
#     password: "sduiyorvdyqvhvzc",
#     authentication: 'plain',
#     :ssl => true,
#     :tsl => true,
#     enable_starttls_auto: true

# }


# ActionMailer::Base.default_url_options = { host: 'localhost', port:'3000' }
# ActionMailer::Base.perform_deliveries = true
# ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.smtp_settings = {
#   address: 'smtp-relay.sendinblue.com',
#   port: 587,
#   domain: 'blueinsight.digital', 
#   user_name: 'Blue Insight Digital',
#   password: 'OLZhTQUJvMwWHd4s',
#   authentication: 'plain',
#   enable_starttls_auto: true
# }