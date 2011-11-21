class Week < ActiveRecord::Base
  attr_accessible :user_id, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday
end
