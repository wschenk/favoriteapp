json.extract! message, :id, :body, :processed, :created_at, :updated_at
json.url message_url(message, format: :json)
