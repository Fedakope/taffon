class EditStatusInJobs < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :status, :string, :default => "Open"
  end
end
