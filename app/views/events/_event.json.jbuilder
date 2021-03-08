json.extract! event, :id, :date, :location, :name, :created_at, :updated_at
json.url event_url(event, format: :json)
