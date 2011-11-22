class Excersise < ActiveRecord::Base
  attr_accessible :day_id, :muscle, :repitions, :duration
  belongs_to :day
end
