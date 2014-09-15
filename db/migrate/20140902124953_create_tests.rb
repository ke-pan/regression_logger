class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :vectorname
      t.string :status, default: "Not Test"
      t.string :description
      t.integer :frame_number
      t.integer :vector_id
      t.integer :format_id
    end
  end
end
