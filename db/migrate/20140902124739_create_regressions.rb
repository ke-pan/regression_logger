class CreateRegressions < ActiveRecord::Migration
  def change
    create_table :regressions do |t|
      t.string :description
      t.integer :tests_set_id
      t.integer :tests_count
    end
  end
end
