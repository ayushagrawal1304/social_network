class AddApprovedToApprovals < ActiveRecord::Migration[6.0]
  def change
    add_column :approvals, :approved, :boolean
  end
end
