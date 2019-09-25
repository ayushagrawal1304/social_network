class AddIndexToCommunity < ActiveRecord::Migration[6.0]
  def change
    add_index :communities, :name, unique: true
  end
end
