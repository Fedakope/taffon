class Event < ApplicationRecord
  before_save :default_values # Photo par default
  belongs_to :user
  has_many :jobs
  mount_uploader :picture, PhotoUploader # Photo uploader

  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_full_address?
  validates :start_date, presence: true
  validates :end_date, presence: true

  # Photo par default
  def default_values 
    self.picture = picture.presence || 'https://res.cloudinary.com/daeahsosj/image/upload/q_82/v1551947831/EVENTS.jpg'
  end
end
