class Skill < ApplicationRecord
  has_many :have_skills
  has_many :jobs
end
