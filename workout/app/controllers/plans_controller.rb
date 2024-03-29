class PlansController < ApplicationController
  before_filter :login_required
  def index
    @plans = Plan.all
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def new
    exists = Plan.where("user_id = ?", current_user.id)
    if !exists.empty?
      redirect_to :root
      return
    end

    @plan = Plan.new
  end

  def create
    @plan = Plan.new(params[:plan])
    @plan.user_id = current_user.id
    if @plan.save
      redirect_to new_workout_type_path, :notice => "Successfully created plan."
    else
      render :action => 'new'
    end
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    @plan = Plan.find(params[:id])
    if @plan.update_attributes(params[:plan])
      redirect_to @plan, :notice  => "Successfully updated plan."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy
    redirect_to plans_url, :notice => "Successfully destroyed plan."
  end
end
