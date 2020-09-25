json.extract! comentario, :id, :posteo_id, :cuerpo, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
