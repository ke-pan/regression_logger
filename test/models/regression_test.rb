require 'test_helper'

class RegressionTest < ActiveSupport::TestCase
  should belong_to(:test_set)
  should have_many(:test_items)
  should have_many(:pass_test_items).conditions(status: 'pass')
  should have_many(:fail_test_items).conditions(status: 'fail')
  should have_many(:hang_test_items).conditions(status: 'hang')
  should have_many(:not_test_test_items).conditions(status: 'not test')
end
