class RemoveApprovalDateFromApproval < ActiveRecord::Migration[6.0]
  def change

    remove_column :approvals, :approval_date, :date
  end
end
