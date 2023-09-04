json.extract! post, :id, :title_es, :title_en, :body_es, :body_en, :created_at, :updated_at
json.url post_url(post, format: :json)
json.body_es post.body_es.to_s
json.body_en post.body_en.to_s
