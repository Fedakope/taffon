class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :content
      t.references :apply, foreign_key: true
      t.references :creator, foreign_key: {to_table: :users}
      t.references :destinator, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
