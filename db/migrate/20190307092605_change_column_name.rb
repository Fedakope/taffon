class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :picture_url, :picture
  end
end
