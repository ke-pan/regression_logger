class CreateTestSet < ActiveRecord::Migration
  def change
    create_table :test_sets do |t|
      t.string :name
    end
  end
end
