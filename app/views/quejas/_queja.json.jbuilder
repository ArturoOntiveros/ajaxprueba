json.extract! queja, :id, :user_id, :text, :created_at, :updated_at
json.url queja_url(queja, format: :json)