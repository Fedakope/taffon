class AddPriceToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :price, :integer, default: 5
  end
end
