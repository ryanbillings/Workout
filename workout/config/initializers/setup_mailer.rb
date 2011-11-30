ActionMailer::Base.smtp_settings = {
  :address					=> "smtp.gmail.com",
  :port						=> 587,
  :user_name				=> "workupapp",
  :password					=> "carnegie",
  :authentication			=> "plain",
  :enable_starttls_auto     => true
}
