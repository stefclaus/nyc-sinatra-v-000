class CreateTitleFigures < ActiveRecord::Migration[5.2]
  def change
    create_table :title_figures do |t|
      t.integer :title_id
      t.integer :song_id
    end
  end
end
