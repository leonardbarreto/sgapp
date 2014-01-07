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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140107124323) do

  create_table "cargos", :force => true do |t|
    t.string   "descricao"
    t.string   "tipodoc"
    t.integer  "funcao_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cores", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "estados", :force => true do |t|
    t.string   "nome",       :limit => 80
    t.string   "uf",         :limit => 2
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "estados_civis", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "funcaos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "funcionarios", :force => true do |t|
    t.integer  "matricula"
    t.date     "dt_admissao"
    t.integer  "pessoa_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "cargo_id"
  end

  create_table "grau_instrucaos", :force => true do |t|
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "descricao",  :limit => 40
  end

  create_table "moradia", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "municipios", :force => true do |t|
    t.string   "nome"
    t.integer  "estado_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pacientes", :force => true do |t|
    t.integer  "peso"
    t.date     "data_obito"
    t.integer  "prontuario"
    t.integer  "pessoa_id"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "slug"
    t.integer  "residencia_id"
    t.integer  "relacionamento_id"
    t.integer  "moradia_id"
    t.string   "atremuneracaoant",       :limit => 1
    t.string   "descatremuneradaant",    :limit => 25
    t.string   "atremuneradatual",       :limit => 1
    t.string   "descatremuneracaoatual", :limit => 25
    t.integer  "previdencia_id"
    t.string   "ajudafamiliar",          :limit => 1
    t.string   "outrasrendas",           :limit => 1
    t.string   "descoutrasrendas",       :limit => 25
    t.string   "descrelacionamento",     :limit => 35
    t.text     "hpp"
    t.string   "it1",                    :limit => 1
    t.string   "it2",                    :limit => 1
    t.string   "it3",                    :limit => 1
    t.string   "it4",                    :limit => 1
    t.string   "it5",                    :limit => 1
    t.text     "outras"
    t.text     "alimentacao"
    t.text     "sono"
    t.text     "disturbio"
    t.string   "etilismo",               :limit => 1
    t.string   "etilismo_tipo",          :limit => 100
    t.string   "etilismo_dose",          :limit => 100
    t.integer  "etilismo_duracao"
    t.string   "tabagismo",              :limit => 1
    t.integer  "tabagismo_duracao"
    t.string   "tabagismo_quantidade",   :limit => 50
    t.string   "religiao",               :limit => 40
    t.string   "plano_de_saude",         :limit => 3
  end

  add_index "pacientes", ["slug"], :name => "index_pacientes_on_slug", :unique => true

  create_table "pessoas", :force => true do |t|
    t.string   "nome"
    t.string   "sexo"
    t.string   "naturalidade",      :limit => 20
    t.string   "nacionalidade",     :limit => 20
    t.string   "identidade",        :limit => 10
    t.string   "cpf",               :limit => 14
    t.string   "nome_pai"
    t.string   "nome_mae"
    t.string   "endereco"
    t.string   "bairro",            :limit => 30
    t.integer  "municipio_id"
    t.string   "telefone",          :limit => 14
    t.string   "telefonecel",       :limit => 14
    t.integer  "estado_civil_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "cor_id"
    t.datetime "data_nas"
    t.integer  "grau_instrucao_id"
  end

  create_table "previdencia", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "relacionamentos", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "residencia", :force => true do |t|
    t.string   "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "role"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
