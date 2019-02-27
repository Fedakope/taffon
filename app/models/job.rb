class Job < ApplicationRecord
  belongs_to :event
  has_many :applies
  has_many :required_skills
  has_many :skills, through: :required_skills
end
