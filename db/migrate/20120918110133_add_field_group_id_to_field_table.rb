class AddFieldGroupIdToFieldTable < ActiveRecord::Migration
  def change
    add_column :fields, :field_group_id, :integer
  end
end
