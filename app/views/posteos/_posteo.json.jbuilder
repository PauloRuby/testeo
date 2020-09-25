json.extract! posteo, :id, :titulo, :cuerpo, :created_at, :updated_at
json.url posteo_url(posteo, format: :json)
