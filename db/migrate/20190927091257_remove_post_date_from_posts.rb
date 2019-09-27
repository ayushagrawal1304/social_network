class RemovePostDateFromPosts < ActiveRecord::Migration[6.0]
  def change

    remove_column :posts, :post_date, :date
  end
end
