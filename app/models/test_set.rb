class TestSet < ActiveRecord::Base
  validates_presence_of :name
  has_many :regressions, -> { order('created_at DESC') }
  has_many :recent_regressions,  -> { order('created_at DESC').limit(5) }, class_name: 'Regression'

  scope :recent, -> { order('updated_at DESC') }
end
