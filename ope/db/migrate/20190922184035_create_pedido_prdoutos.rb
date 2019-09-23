class CreatePedidoPrdoutos < ActiveRecord::Migration[6.0]
  def change
    create_table :pedido_prdoutos do |t|
      t.references :pedido, null: false, foreign_key: true
      t.references :produto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
