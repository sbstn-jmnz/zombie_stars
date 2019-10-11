json.extract! zombie, :id, :name, :kills, :photo, :health, :created_at, :updated_at
json.url zombie_url(zombie, format: :json)
