json.extract! author, :id, :name, :genre, :bio, :created_at, :updated_at
json.url author_url(author, format: :json)
