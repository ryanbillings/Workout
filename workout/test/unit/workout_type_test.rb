require 'test_helper'

class WorkoutTypeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert WorkoutType.new.valid?
  end
end
