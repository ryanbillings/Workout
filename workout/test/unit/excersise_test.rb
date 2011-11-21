require 'test_helper'

class ExcersiseTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Excersise.new.valid?
  end
end
