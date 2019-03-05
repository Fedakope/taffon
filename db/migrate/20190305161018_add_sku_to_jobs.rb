class AddSkuToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :sku, :string
  end
end
