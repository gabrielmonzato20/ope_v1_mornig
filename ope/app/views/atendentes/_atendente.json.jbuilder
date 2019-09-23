json.extract! atendente, :id, :nome, :email, :senha, :created_at, :updated_at
json.url atendente_url(atendente, format: :json)
