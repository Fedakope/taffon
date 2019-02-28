class Job < ApplicationRecord
  belongs_to :event
  belongs_to :skill
  has_many :applies
  has_many :required_skills
end
