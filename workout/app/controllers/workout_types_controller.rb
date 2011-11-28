include WorkoutTypesHelper
class WorkoutTypesController < ApplicationController
  def index
    @workout_types = WorkoutType.all
  end

  def show
    @workout_type = WorkoutType.find(params[:id])
  end

  def new
    @workout_type = WorkoutType.new
    @workout_types = WorkoutType.getWrkNames
    @errors = Array.new
  end

  def create
    @workout_type = WorkoutType.new(params[:workout_type])
    @workout_type.plan_id = Plan.find_by_user_id(current_user.id)
    if @workout_type.save
      rand()
      redirect_to @workout_type, :notice => "Successfully created workout type."
    else
      render :action => 'new'
    end
  end

  def edit
    @workout_type = WorkoutType.find(params[:id])
  end

  def multi_create
    @workout_types = params[:workout_type_names]
    @errors = Array.new
    if @workout_types.length > 3
      @errors.push("You can only choose up to 3 workout types")
      @workout_types = WorkoutType.getWrkNames
      render :action => 'new'
      return
    end
    for wrkout_type in @workout_types
      temp = WorkoutType.new
      temp.plan_id = Plan.find_by_user_id(current_user.id)
      temp.name = wrkout_type
      temp.save
    end
    redirect_to :root, :notice => "Successfully selected workout types."
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
