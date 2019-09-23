class Pedido < ApplicationRecord
  belongs_to :cliente
  belongs_to :atendente
  has_many :pedido_prdouto ,dependent: :delete_all
  has_many :produtos , through: :pedido_prdouto ,dependent: :delete_all
end
