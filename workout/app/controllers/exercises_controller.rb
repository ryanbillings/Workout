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
    @exercises = Exercise.where("name LIKE ? OR muscle LIKE ? AND day_id IS ?","%#{query}%","#{query}%",nil).paginate :page => params[:page], :per_page => 6
  end
end
