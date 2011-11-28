class Day < ActiveRecord::Base
  attr_accessible :plan_id, :date, :duration, :complete, :day, :name
  belongs_to :plan
  has_many :exercises
  has_event_calendar :start_at_field => 'date', :end_at_field => 'date', :name_field => 'name'

  def format_date(date)
    return date.strftime("%B %d, %Y")
  end

  def self.format_date(date)
    return date.strftime("%B %d, %Y")
  end

  def format_time(time)
        return time.strftime("%l:%M%P")
  end

  def self.format_time(time)
    return time.strftime("%l:%M%P")
  end


end
