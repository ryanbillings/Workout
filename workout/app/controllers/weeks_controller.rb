class WeeksController < ApplicationController
  def index
    @weeks = Week.all
  end

  def show
    @week = Week.find(params[:id])
  end

  def new
    @week = params[:week]
  end

  def create
    newWeek = Week.new
    newWeek.user_id = current_user.id
    newWeek.monday = params[:monday_hour].to_i*60 + (params[:monday_minutes].to_i)
    
    newWeek.tuesday = params[:tuesday_hour].to_i*60 + (params[:tuesday_minutes].to_i)
    newWeek.wednesday = params[:wednesday_hour].to_i*60 + (params[:wednesday_minutes].to_i)
    newWeek.thursday = params[:thursday_hour].to_i*60 + (params[:thursday_minutes].to_i)
    newWeek.friday = params[:friday_hour].to_i*60 + (params[:friday_minutes].to_i)
    newWeek.saturday = params[:saturday_hour].to_i*60 + (params[:saturday_minutes].to_i)
    newWeek.sunday = params[:sunday_hour].to_i*60 + (params[:sunday_minutes].to_i)

    if newWeek.save
      redirect_to new_plan_path, :notice => "Successfully created week. Registration is almost complete"
    else
      render :action => 'new'
    end
  end

  def edit
    @week = Week.find(params[:id])
  end

  def update
    @week = Week.find(params[:id])
    if @week.update_attributes(params[:week])
      redirect_to @week, :notice  => "Successfully updated week."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @week = Week.find(params[:id])
    @week.destroy
    redirect_to weeks_url, :notice => "Successfully destroyed week."
  end
end
