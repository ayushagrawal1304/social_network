class ChangeColumnNameFromPosts < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :post_description, :description
  end
end
