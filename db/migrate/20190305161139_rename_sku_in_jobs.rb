class RenameSkuInJobs < ActiveRecord::Migration[5.2]
  def change
    rename_column :jobs, :sku, :job_sku
  end
end
