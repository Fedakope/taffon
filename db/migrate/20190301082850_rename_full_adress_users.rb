class RenameFullAdressUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :full_adress, :full_address
  end
end
