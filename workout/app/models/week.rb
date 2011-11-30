class Week < ActiveRecord::Base
  attr_accessible :user_id, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday
  belongs_to :user

  validates_numericality_of :monday
  validates_numericality_of :tuesday
  validates_numericality_of :wednesday
  validates_numericality_of :thursday
  validates_numericality_of :friday
  validates_numericality_of :saturday
  validates_numericality_of :sunday
end
