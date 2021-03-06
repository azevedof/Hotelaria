# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140225005113) do

  create_table "aposentos", force: true do |t|
    t.string   "valor"
    t.string   "descricao"
    t.string   "numero"
    t.integer  "hotel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "aposentos", ["hotel_id"], name: "index_aposentos_on_hotel_id"

  create_table "consumos", force: true do |t|
    t.string   "descricao"
    t.string   "quantidade"
    t.string   "valorUnitario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contas", force: true do |t|
    t.string   "valorTotal"
    t.string   "pago"
    t.integer  "consumo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contas", ["consumo_id"], name: "index_contas_on_consumo_id"

  create_table "hospedagens", force: true do |t|
    t.string   "dataEntrada"
    t.string   "dataSaida"
    t.integer  "conta_id"
    t.integer  "hospede_id"
    t.integer  "aposento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hospedagens", ["aposento_id"], name: "index_hospedagens_on_aposento_id"
  add_index "hospedagens", ["conta_id"], name: "index_hospedagens_on_conta_id"
  add_index "hospedagens", ["hospede_id"], name: "index_hospedagens_on_hospede_id"

  create_table "hospedes", force: true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.string   "telefone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hotels", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "cidade"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
