class Regression < ActiveRecord::Base
  belongs_to :test_set
  has_many :test_items, -> { order("vectorname") }
  has_many :pass_test_items, -> { where(status: 'pass') }, class_name: 'TestItem'
  has_many :fail_test_items, -> { where(status: 'fail') }, class_name: 'TestItem'
  has_many :hang_test_items, -> { where(status: 'hang') }, class_name: 'TestItem'
  has_many :not_test_test_items, ->  { where(status: 'not test') }, class_name: 'TestItem'

  delegate :name, to: :test_set, prefix: true
end
