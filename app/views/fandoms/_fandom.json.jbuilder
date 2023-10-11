json.extract! fandom, :id, :title, :author_id, :category_id, :character_id, :created_at, :updated_at
json.url fandom_url(fandom, format: :json)
