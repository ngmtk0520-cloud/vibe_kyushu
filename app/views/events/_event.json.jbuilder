json.extract! event, :id, :venue_id, :user_id, :title, :date, :description, :image, :fee, :genre, :status, :source_url, :created_at, :updated_at
json.url event_url(event, format: :json)
