class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :applies
  has_many :events
  has_many :skills, through: :have_skill
  has_many :reviews, foreign_key: :creator_id
  has_many :reviews, foreign_key: :destinator_id
end
