class User < ApplicationRecord
  include PgSearch
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2, :facebook]
  has_many :applies
  has_many :events
  has_many :orders
  has_many :have_skill
  has_many :skills, through: :have_skill
  has_many :reviews, foreign_key: :creator_id
  has_many :reviews, foreign_key: :destinator_id
  has_many :jobs, through: :events
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :phone_number
  validates_uniqueness_of :phone_number

  # Search
  pg_search_scope :search_by_skill, against: [:full_address, :description ], associated_against: {
      skills: [:name, :category],
  }, using: {
      tsearch: { prefix: true },
  }


  # against: [ :title, :syllabus ],
  # associated_against: {
  #   director: [ :first_name, :last_name ]
  # },
  # using: {
  #   tsearch: { prefix: true }
  # }

  # Cloudinary/CarrierWave
  mount_uploader :photo, PhotoUploader


  def self.from_omniauth_g(access_token)
    data = access_token.info
    user = User.where(email: data["email"]).first

    # Uncomment the section below if you want users to be created if they don't exist
    user ||= User.create(first_name: data["first_name"],
                        email: data["email"],
                        password: Devise.friendly_token[0, 20])
    user
  end

  def self.from_omniauth_f(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      # user.name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def categories
    have_skill.map(&:skill).map(&:category)
  end
end
