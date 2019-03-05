class Event < ApplicationRecord
  belongs_to :user
  has_many :jobs

  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_full_address?
  validates :start_date, presence: true
  validates :end_date, presence: true

end
