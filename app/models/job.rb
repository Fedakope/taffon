class Job < ApplicationRecord
  belongs_to :event
  belongs_to :skill
  has_many :applies
  validates :start_at, presence: true
  validates :end_at, presence: true
end
