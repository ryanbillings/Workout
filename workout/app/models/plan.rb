class Plan < ActiveRecord::Base
  attr_accessible :user_id, :gym, :start_date, :end_date
  belongs_to :user
  has_many :workout_types
  has_many :days
  has_many :excersises, :through => :days
end
