class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :community_id
      t.integer :user_id
      t.string :post_description
      t.date :post_date

      t.timestamps
    end
  end
end
