class CreateApprovals < ActiveRecord::Migration[6.0]
  def change
    create_table :approvals do |t|
      t.integer :community_id
      t.integer :user_id
      t.integer :status
      t.date :approval_date

      t.timestamps
    end
  end
end
