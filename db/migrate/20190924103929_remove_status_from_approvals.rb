class RemoveStatusFromApprovals < ActiveRecord::Migration[6.0]
  def change

    remove_column :approvals, :status, :integer
  end
end
