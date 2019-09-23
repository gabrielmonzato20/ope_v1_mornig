class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :Nome
      t.string :Email
      t.string :Cpf
      t.string :Telefone
      t.string :Rg

      t.timestamps
    end
  end
end
