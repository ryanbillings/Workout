class WorkoutType < ActiveRecord::Base
  attr_accessible :plan_id, :name
  belongs_to :plan
  def self.getWrkNames
    arr = Array.new
    arr.push("Deltoids")
    arr.push("Upper Body")
    arr.push("Lower Body")
    arr.push("Core")
    return arr
  end
end
