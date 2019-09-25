class RemoveEmailFromCommunities < ActiveRecord::Migration[6.0]
  def change

    remove_column :communities, :email, :string
  end
end
