class UserMailer < ActionMailer::Base
  default from: "workupapp@gmail.com"

  def welcome(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to WorkUp!")
  end

  def reset_password(user, password)
    @user = user
    @password = password
    mail(:to => user.email, :subject => "Password Reset")
  end
end
