class ExcersisesController < ApplicationController
  def index
    @excersises = Excersise.all
  end

  def show
    @excersise = Excersise.find(params[:id])
  end

  def new
    @excersise = Excersise.new
  end

  def create
    @excersise = Excersise.new(params[:excersise])
    if @excersise.save
      redirect_to @excersise, :notice => "Successfully created excersise."
    else
      render :action => 'new'
    end
  end

  def edit
    @excersise = Excersise.find(params[:id])
  end

  def update
    @excersise = Excersise.find(params[:id])
    if @excersise.update_attributes(params[:excersise])
      redirect_to @excersise, :notice  => "Successfully updated excersise."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @excersise = Excersise.find(params[:id])
    @excersise.destroy
    redirect_to excersises_url, :notice => "Successfully destroyed excersise."
  end
end
