class RemoveCategoryFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :category, :string
  end
end
