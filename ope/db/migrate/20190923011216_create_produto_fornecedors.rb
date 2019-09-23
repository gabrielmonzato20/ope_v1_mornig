class CreateProdutoFornecedors < ActiveRecord::Migration[6.0]
  def change
    create_table :produto_fornecedors do |t|
      t.references :produto, null: false, foreign_key: true
      t.references :fornecedor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
