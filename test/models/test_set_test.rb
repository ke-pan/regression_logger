require 'test_helper'

class TestSetTest < ActiveSupport::TestCase
  should have_many(:regressions)
  should validate_presence_of(:name)

  # test "recent scope" do
  #   Fabricate.sequence
  #   assert_equal recent, [test_sets(:)]
  # end
end
