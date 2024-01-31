json.extract! log_activity, :id, :text, :created_at, :updated_at
json.url log_activity_url(log_activity, format: :json)
