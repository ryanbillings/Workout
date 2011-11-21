class Day < ActiveRecord::Base
  attr_accessible :plan_id, :date, :duration, :complete
end
