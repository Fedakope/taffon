class ChangeAmountDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :orders, :amount, :integer, default: "500"
  end
end
