class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.integer :field_id
      t.integer :item_id

      t.timestamps
    end
  end
end
