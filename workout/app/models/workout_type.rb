class WorkoutType < ActiveRecord::Base
  attr_accessible :plan_id, :name, :priority
  belongs_to :plan
  def self.getWrkNames
    arr = Array.new
    arr.push("Upper Body")
    arr.push("Lower Body")
    arr.push("Core")
    arr.push("Cardio")
    arr.push("Yoga")
    arr.push("Plyometrics")
    return arr
  end
end
