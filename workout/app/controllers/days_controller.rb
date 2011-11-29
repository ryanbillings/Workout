require 'will_paginate/array'
class DaysController < ApplicationController
  before_filter :login_required
  def index
    @mydays = current_user.days.paginate :page => params[:page], :per_page => 6
    @notification = Day.where("date = ? and plan_id = ?", Time.now.strftime("%Y-%m-%d"), current_user.plan.id).first
  end

  def show
    @day = Day.find(params[:id])
    @excersises = @day.exercises
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.new(params[:day])
    @day.plan_id = current_user.plan.id
    if @day.save
      redirect_to @day, :notice => "Successfully created day."
    else
      render :action => 'new'
    end
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])
    if @day.update_attributes(params[:day])
      redirect_to @day, :notice  => "Successfully updated day."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to days_url, :notice => "Successfully destroyed day."
  end
end
