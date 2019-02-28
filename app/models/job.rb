class Job < ApplicationRecord
  belongs_to :event
  belongs_to :skill
  has_many :applies
end
