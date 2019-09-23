json.extract! produto, :id, :descricao, :marca, :cor, :preco, :created_at, :updated_at
json.url produto_url(produto, format: :json)
