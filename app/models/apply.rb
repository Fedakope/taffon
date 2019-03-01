class Apply < ApplicationRecord
  belongs_to :job
  belongs_to :user

  validates :job, uniqueness: { scope: :user, message: "You already applied for this position" }
  after_commit :create_notifications, on: :create

  def create_notifications
    Notification.create do |notification|
      notification.notify_type = 'post'
      notification.actor = self.user
      notification.user = self.job.event.user
      notification.target = @apply
    end
  end
end
