json.extract! event, :id, :longitude, :latitude, :address, :title, :created_at, :updated_at
json.url event_url(event, format: :json)
