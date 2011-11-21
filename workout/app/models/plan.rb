class Plan < ActiveRecord::Base
  attr_accessible :user_id, :gym, :start_date, :end_date
end
