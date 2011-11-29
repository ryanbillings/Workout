class Exercise < ActiveRecord::Base
  attr_accessible :muscle, :duration, :name, :reps, :day_id, :description, :url
end
