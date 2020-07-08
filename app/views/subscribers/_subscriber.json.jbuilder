json.extract! subscriber, :id, :email, :first_name, :last_name, :source, :verified, :created_at, :updated_at
json.url subscriber_url(subscriber, format: :json)
