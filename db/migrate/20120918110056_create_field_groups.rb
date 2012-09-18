class CreateFieldGroups < ActiveRecord::Migration
  def change
    create_table :field_groups do |t|
      t.string :label

      t.timestamps
    end
  end
end
