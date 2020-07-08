json.extract! post, :id, :title, :slug, :content, :active, :meta_desc, :meta_keywords, :created_at, :updated_at
json.url post_url(post, format: :json)
