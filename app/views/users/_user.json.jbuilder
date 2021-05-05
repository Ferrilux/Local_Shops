json.extract! user, :id, :User_id, :Email, :Password, :created_at, :updated_at
json.url user_url(user, format: :json)
