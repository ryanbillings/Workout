class UsersController < ApplicationController
  before_filter :login_required, :except => [:new, :create, :reset]
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      UserMailer.welcome(@user).deliver()
      redirect_to new_week_path, :notice => "Thank you for signing up! Please enter this information."
    else
      render :action => 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_url, :notice => "Your profile has been updated."
    else
      render :action => 'edit'
    end
  end

  def reset
    @email = params[:email]
    password = (0...50).map{ ('a'..'z').to_a[rand(26)] }.join
    @user = User.find_by_email(@email)
    if @user != nil
      @user.update_attribute(:password, password)
      UserMailer.reset_password(@user,password).deliver()
      redirect_to :login, :notice => "Your password has been reset."
    end
  end
end
