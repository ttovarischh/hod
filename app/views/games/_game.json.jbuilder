json.extract! game, :id, :code, :name, :fight, :slug, :created_at, :updated_at
json.url game_url(game, format: :json)
