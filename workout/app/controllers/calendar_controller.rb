class CalendarController < ApplicationController
 before_filter :login_required
  
  def index
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)

    @event_strips = current_user.days.event_strips_for_month(@shown_month)
    @days = current_user.days
  end
  
end
