module Notifications
  class NotificationsController < Notifications::ApplicationController
    def index
      read_all

      @notification_groups = @notifications.group_by { |note| note.created_at.to_date }
    end

    def clean
      notifications.delete_all
      redirect_to profile_path
    end

    def destroy
      @notification = Notification.find(params[:id])
      @notification.destroy
      redirect_to main_app.profile_path
    end


    def read_all
      @notifications = notifications.includes(:actor).order('id desc').page(params[:page])
      unread_ids = @notifications.reject(&:read?).select(&:id)
      Notification.read!(unread_ids)
      redirect_to main_app.profile_path
    end

    private

    def notifications
      raise 'You need reqiure user login for /notifications page.' unless current_user
      Notification.where(user_id: current_user.id)
    end


  end
end
