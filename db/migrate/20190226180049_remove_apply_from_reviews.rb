class RemoveApplyFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :apply, foreign_key: true
  end
end
