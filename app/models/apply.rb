class Apply < ApplicationRecord
  belongs_to :job
  belongs_to :user

  validates :job, uniqueness: { scope: :user, message: "You already applied for this position" }
end
