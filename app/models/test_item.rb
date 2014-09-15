require 'csv'

class TestItem < ActiveRecord::Base
  def self.import(file, regression_id)
    CSV.foreach(file.path, headers: true) do |row|
      row = row.to_hash
      row['status'].downcase!
      test_item = find_by(vectorname: row['vectorname'], regression_id: regression_id) || new
      test_item.update_attributes(row.merge({regression_id: regression_id}))
    end
  end
end
