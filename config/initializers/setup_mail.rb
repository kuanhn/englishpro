if Rails.env.development?
    ActionMailer::Base.delivery_method = :smtp
    ActionMailer::Base.smtp_settings = {
        address: 'smtp.sendgrid.net',
        port: '2525',
        authentication: :plain,
        user_name: ENV['SENDGRID_USERNAME'],
        password: ENV['SENDGRID_PASSWORD'],
        domain: 'c9.io',
        enable_starttls_auto: true
        
    }
end