class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :commentable_id
      t.string :commentable_type
      t.string :comment

      t.timestamps
    end
  end
end
