class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :address
      t.integer :city_id
      t.integer :country_id
      t.integer :price

      t.timestamps
    end
  end
end
