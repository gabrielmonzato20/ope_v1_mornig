json.extract! cliente, :id, :Nome, :Email, :Cpf, :Telefone, :Rg, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
