class CreateHighlights < ActiveRecord::Migration
  def change
    create_table :highlights do |t|
      t.string :content
      t.integer :item_id
      t.integer :sort

      t.timestamps
    end
  end
end
