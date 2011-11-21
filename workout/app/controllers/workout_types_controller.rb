class WorkoutTypesController < ApplicationController
  def index
    @workout_types = WorkoutType.all
  end

  def show
    @workout_type = WorkoutType.find(params[:id])
  end

  def new
    @workout_type = WorkoutType.new
  end

  def create
    @workout_type = WorkoutType.new(params[:workout_type])
    if @workout_type.save
      redirect_to @workout_type, :notice => "Successfully created workout type."
    else
      render :action => 'new'
    end
  end

  def edit
    @workout_type = WorkoutType.find(params[:id])
  end

  def update
    @workout_type = WorkoutType.find(params[:id])
    if @workout_type.update_attributes(params[:workout_type])
      redirect_to @workout_type, :notice  => "Successfully updated workout type."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @workout_type = WorkoutType.find(params[:id])
    @workout_type.destroy
    redirect_to workout_types_url, :notice => "Successfully destroyed workout type."
  end
end
