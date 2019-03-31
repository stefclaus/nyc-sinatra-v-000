class CreateFigures < ActiveRecord::Migration[5.2]
  def change
    create_table :figures do |t|
      t.string :name
      t.integer :figure_id
    end
  end
end
