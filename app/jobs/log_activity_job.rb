class LogActivityJob < ApplicationJob
  queue_as :default

  def perform(message)
    LogActivity.create(text: message)
  end
end
