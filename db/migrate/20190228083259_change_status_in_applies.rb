class ChangeStatusInApplies < ActiveRecord::Migration[5.2]
  def change
    change_column :applies, :status, :string, :default => "Pending"

  end
end
