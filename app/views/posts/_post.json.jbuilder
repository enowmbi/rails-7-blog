json.extract! post, :id, :title, :summary, :content, :published, :created_at, :updated_at
json.url post_url(post, format: :json)
