class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(params[:exercise])
    if @exercise.save
      redirect_to @exercise, :notice => "Successfully created exercise."
    else
      render :action => 'new'
    end
  end

  def edit
    @exercise = Exercise.find(params[:id])
  end

  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update_attributes(params[:exercise])
      redirect_to @exercise, :notice  => "Successfully updated exercise."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to exercises_url, :notice => "Successfully destroyed exercise."
  end

  def description
    @exercise = Exercise.where("name = ? AND day_id IS ?", params[:name], nil).first
  end

  def search
    query = params[:search]
    @exercises = Exercise.where("(name LIKE ? OR muscle LIKE ?) AND day_id IS ?","%#{query}%","#{query}%",nil).paginate :page => params[:page], :per_page => 6
  end

  def browse
    @chest = Exercise.where("muscle = ? AND day_id IS ?", "Chest", nil)
    @biceps = Exercise.where("muscle = ? AND day_id IS ?", "Bicep", nil)
    @shoulders = Exercise.where("muscle = ? AND day_id IS ?", "Shoulder", nil)
    @triceps = Exercise.where("muscle = ? AND day_id IS ?", "Tricep", nil)
    
    @quadriceps = Exercise.where("muscle = ? AND day_id IS ?", "Quadricep", nil)
    @hamstrings = Exercise.where("muscle = ? AND day_id IS ?", "Hamstring", nil)
    @gluteal = Exercise.where("muscle = ? AND day_id IS ?", "Gluteal", nil)
    @calves = Exercise.where("muscle = ? AND day_id IS ?", "Calves", nil)
    @hips = Exercise.where("muscle = ? AND day_id IS ?", "Hips", nil)
    
    @obliques = Exercise.where("muscle = ? AND day_id IS ?", "Obliques", nil)
    @lower_backs = Exercise.where("muscle = ? AND day_id IS ?", "Lower Back", nil)
    @abdominals = Exercise.where("muscle = ? AND day_id IS ?", "Abdominal", nil)
  end

end
