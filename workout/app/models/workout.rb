class Workout < ActiveRecord::Base
  attr_accessible :day_id, :name, :muscle, :reps, :duration
end
