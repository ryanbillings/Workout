class UserMailer < ActionMailer::Base
  default from: "meetupisproject@gmail.com"

  def welcome(user)
    @user = user
    mail(:to => user.email, :subject => "Welcome to WorkUp!")
  end

  def reset_password(email)
    @user = User.find_by_email(email)
    if @user != nil
    mail(:to => user.email, :subject => "Password Reset")
    end
  end
end
