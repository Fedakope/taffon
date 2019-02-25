class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :description
      t.string :category
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
