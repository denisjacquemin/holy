class AddQuoteToItems < ActiveRecord::Migration
  def change
    add_column :items, :quote, :string
  end
end
