MANDRILL_API_KEY = "0IS80ngs5LxYG7s8AClYCw"
ActionMailer::Base.smtp_settings = {
    address: "smtp.mandrillapp.com",
    port: 587,
    enable_starttls_auto: true,
    user_name: "current@current360.com",
    password: MANDRILL_API_KEY,
    authentication: "login"
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: "utf-8"