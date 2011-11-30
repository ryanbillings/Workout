class Plan < ActiveRecord::Base
  attr_accessible :user_id, :gym, :start_date, :end_date
  belongs_to :user
  has_many :workout_types
  has_many :days
  has_many :excersises, :through => :days

  validates_presence_of :start_date
  validates_presence_of :end_date
  validates_datetime :end_date, :after => :start_date, :after_message => 'must be after start date'
  validates_datetime :start_date, :on_or_after => Date.today, :on_or_after_message => 'must be on or after today'
end
