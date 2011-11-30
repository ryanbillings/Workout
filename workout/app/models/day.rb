class Day < ActiveRecord::Base
  attr_accessible :plan_id, :date, :duration, :day, :name, :color
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

  def self.getColor
    colorArray = Array.new
    colorArray.push("#330066")
    colorArray.push("#00FFFF")
    colorArray.push("#FF0000")
    colorArray.push("#FF66CC")
    colorArray.push("#336633")
    colorArray.push("#333333")
    colorArray.push("#00FF66")
    colorArray.push("#666633")
    return colorArray
  end
end
