class AddSleepsToItems < ActiveRecord::Migration
  def change
    add_column :items, :sleeps, :integer
  end
end
