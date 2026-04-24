json.extract! venue, :id, :name, :address, :instagram_url, :area, :created_at, :updated_at
json.url venue_url(venue, format: :json)
