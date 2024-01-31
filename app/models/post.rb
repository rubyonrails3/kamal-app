class Post < ApplicationRecord
  after_create :log_activity_create
  after_update :log_activity_update


  def log_activity_update
    LogActivityJob.perform_later "Post Updated"
  end

  def log_activity_create
    LogActivityJob.perform_later "Post Created"
  end
end
