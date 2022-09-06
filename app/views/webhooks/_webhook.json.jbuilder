json.extract! webhook, :id, :body, :created_at, :updated_at
json.url webhook_url(webhook, format: :json)
