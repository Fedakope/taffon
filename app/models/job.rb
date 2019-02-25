class Job < ApplicationRecord
  belongs_to :event
  has_many :applies
end
