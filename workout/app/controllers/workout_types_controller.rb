include WorkoutTypesHelper
class WorkoutTypesController < ApplicationController
 before_filter :login_required

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
    
    @wt1 = params[:workout_type1]
    @wt2 = params[:workout_type2]
    @wt3 = params[:workout_type3]

    if !@wt1.empty?
      wk1 = WorkoutType.new
      wk1.plan_id = current_user.plan.id
      wk1.name = @wt1
      wk1.priority = 1
      wk1.save
    end
    if !@wt2.empty? && !@wt1.empty?
      wk2 = WorkoutType.new
      wk2.plan_id = current_user.plan.id
      wk2.name = @wt2
      wk2.priority = 2
      wk2.save
    end

    if !@wt3.empty? && !@wt2.empty? && !@wt1.empty?
      wk3 = WorkoutType.new
      wk3.plan_id = current_user.plan.id
      wk3.name = @wt3
      wk3.priority = 3
      wk3.save
    end

    generate_populate()
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
