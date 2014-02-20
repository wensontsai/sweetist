json.array!(@users) do |user|
  json.extract! user, :id, :email, :admin, :approved
  json.url user_url(user, format: :json)
end
