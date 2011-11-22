class Day < ActiveRecord::Base
  attr_accessible :plan_id, :date, :duration, :complete
  belongs_to :plan
  has_many :excersises
  has_event_calendar :start_at_field => 'date', :end_at_field => 'date', :name_field => 'plan_id'

  def name
    "Chest"
  end

end
