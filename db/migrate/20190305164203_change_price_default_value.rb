class ChangePriceDefaultValue < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :price, :integer, default: 500
  end
end
