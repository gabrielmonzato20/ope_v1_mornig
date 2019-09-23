class Fornecedor < ApplicationRecord
  has_many  :produto_fornecedor,dependent: :delete_all
  has_many :produtos , through: :produto_fornecedor,dependent: :delete_all
end
