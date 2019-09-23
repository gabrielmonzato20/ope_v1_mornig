# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_23_011216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atendentes", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "senha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "Nome"
    t.string "Email"
    t.string "Cpf"
    t.string "Telefone"
    t.string "Rg"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ecs", force: :cascade do |t|
    t.string "name"
    t.string "plot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "telefone"
    t.string "cpf"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pedido_prdoutos", force: :cascade do |t|
    t.bigint "pedido_id", null: false
    t.bigint "produto_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pedido_id"], name: "index_pedido_prdoutos_on_pedido_id"
    t.index ["produto_id"], name: "index_pedido_prdoutos_on_produto_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.bigint "atendente_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["atendente_id"], name: "index_pedidos_on_atendente_id"
    t.index ["cliente_id"], name: "index_pedidos_on_cliente_id"
  end

  create_table "produto_fornecedors", force: :cascade do |t|
    t.bigint "produto_id", null: false
    t.bigint "fornecedor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fornecedor_id"], name: "index_produto_fornecedors_on_fornecedor_id"
    t.index ["produto_id"], name: "index_produto_fornecedors_on_produto_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "descricao"
    t.string "marca"
    t.string "cor"
    t.money "preco", scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pedido_prdoutos", "pedidos"
  add_foreign_key "pedido_prdoutos", "produtos"
  add_foreign_key "pedidos", "atendentes"
  add_foreign_key "pedidos", "clientes"
  add_foreign_key "produto_fornecedors", "fornecedors"
  add_foreign_key "produto_fornecedors", "produtos"
end
