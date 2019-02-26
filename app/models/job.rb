class Job < ApplicationRecord
  belongs_to :event
  has_many :applies
  has_many :skills, through: :required_skill
end
