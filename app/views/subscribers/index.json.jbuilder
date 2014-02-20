json.array!(@subscribers) do |subscriber|
  json.extract! subscriber, :id, :name, :email, :company, :website, :message
  json.url subscriber_url(subscriber, format: :json)
end
