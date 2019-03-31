class CreateLandmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :landmarks do |t|
      t.string :name
      t.integer :landmark_id
      t.integer :year_completed
    end
  end
end
