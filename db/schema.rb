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

ActiveRecord::Schema.define(version: 20180614014017) do

  create_table "bills", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "description"
    t.decimal "ingress", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "factura_doc_file_name"
    t.string "factura_doc_content_type"
    t.integer "factura_doc_file_size"
    t.datetime "factura_doc_updated_at"
    t.bigint "contract_installation_id"
    t.index ["contract_installation_id"], name: "index_bills_on_contract_installation_id"
  end

  create_table "contract_guards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "start_date"
    t.datetime "finish_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "contrato_doc_file_name"
    t.string "contrato_doc_content_type"
    t.integer "contrato_doc_file_size"
    t.datetime "contrato_doc_updated_at"
    t.bigint "guard_id"
    t.index ["guard_id"], name: "index_contract_guards_on_guard_id"
  end

  create_table "contract_installations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "start_date"
    t.datetime "finish_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "contrato_de_instalacion_doc_file_name"
    t.string "contrato_de_instalacion_doc_content_type"
    t.integer "contrato_de_instalacion_doc_file_size"
    t.datetime "contrato_de_instalacion_doc_updated_at"
    t.bigint "installation_id"
    t.index ["installation_id"], name: "index_contract_installations_on_installation_id"
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "factura_evento_doc_file_name"
    t.string "factura_evento_doc_content_type"
    t.integer "factura_evento_doc_file_size"
    t.datetime "factura_evento_doc_updated_at"
    t.datetime "date"
    t.bigint "installation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["installation_id"], name: "index_events_on_installation_id"
  end

  create_table "guards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "rut"
    t.string "phone_number"
    t.string "email"
    t.string "nationality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "surname"
    t.integer "age"
    t.string "sex"
    t.string "city"
    t.string "commune"
    t.string "address"
    t.string "educational_level"
    t.string "second_phone"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "afiliation"
    t.string "prevision"
    t.string "contract_type"
    t.string "ficha_guardia_doc_file_name"
    t.string "ficha_guardia_doc_content_type"
    t.integer "ficha_guardia_doc_file_size"
    t.datetime "ficha_guardia_doc_updated_at"
    t.string "cert_estudio_doc_file_name"
    t.string "cert_estudio_doc_content_type"
    t.integer "cert_estudio_doc_file_size"
    t.datetime "cert_estudio_doc_updated_at"
    t.string "cert_residencia_doc_file_name"
    t.string "cert_residencia_doc_content_type"
    t.integer "cert_residencia_doc_file_size"
    t.datetime "cert_residencia_doc_updated_at"
    t.string "cedula_identidad_doc_file_name"
    t.string "cedula_identidad_doc_content_type"
    t.integer "cedula_identidad_doc_file_size"
    t.datetime "cedula_identidad_doc_updated_at"
    t.string "pacto_horas_doc_file_name"
    t.string "pacto_horas_doc_content_type"
    t.integer "pacto_horas_doc_file_size"
    t.datetime "pacto_horas_doc_updated_at"
    t.string "cert_antecedentes_doc_file_name"
    t.string "cert_antecedentes_doc_content_type"
    t.integer "cert_antecedentes_doc_file_size"
    t.datetime "cert_antecedentes_doc_updated_at"
    t.string "credencial_doc_file_name"
    t.string "credencial_doc_content_type"
    t.integer "credencial_doc_file_size"
    t.datetime "credencial_doc_updated_at"
    t.string "derecho_saber_doc_file_name"
    t.string "derecho_saber_doc_content_type"
    t.integer "derecho_saber_doc_file_size"
    t.datetime "derecho_saber_doc_updated_at"
    t.string "epp_entrega_doc_file_name"
    t.string "epp_entrega_doc_content_type"
    t.integer "epp_entrega_doc_file_size"
    t.datetime "epp_entrega_doc_updated_at"
    t.string "epp_recibo_doc_file_name"
    t.string "epp_recibo_doc_content_type"
    t.integer "epp_recibo_doc_file_size"
    t.datetime "epp_recibo_doc_updated_at"
    t.string "auth_turno_doc_file_name"
    t.string "auth_turno_doc_content_type"
    t.integer "auth_turno_doc_file_size"
    t.datetime "auth_turno_doc_updated_at"
    t.string "reg_interno_doc_file_name"
    t.string "reg_interno_doc_content_type"
    t.integer "reg_interno_doc_file_size"
    t.datetime "reg_interno_doc_updated_at"
    t.text "observations"
    t.boolean "active"
  end

  create_table "guards_installations", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "guard_id", null: false
    t.bigint "installation_id", null: false
  end

  create_table "installations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "number_guards"
    t.integer "additional_guards"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modifications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "contract_guard_id"
    t.string "modificacion_doc_file_name"
    t.string "modificacion_doc_content_type"
    t.integer "modificacion_doc_file_size"
    t.datetime "modificacion_doc_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_guard_id"], name: "index_modifications_on_contract_guard_id"
  end

  create_table "osdocumentations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "guard_id"
    t.datetime "expiration"
    t.string "certificado_os10_doc_file_name"
    t.string "certificado_os10_doc_content_type"
    t.integer "certificado_os10_doc_file_size"
    t.datetime "certificado_os10_doc_updated_at"
    t.boolean "state"
    t.index ["guard_id"], name: "index_osdocumentations_on_guard_id"
  end

  create_table "sallary_settlements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "cost"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "liquidacion_doc_file_name"
    t.string "liquidacion_doc_content_type"
    t.integer "liquidacion_doc_file_size"
    t.datetime "liquidacion_doc_updated_at"
    t.bigint "guard_id"
    t.index ["guard_id"], name: "index_sallary_settlements_on_guard_id"
  end

  create_table "settlements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "finiquito_doc_file_name"
    t.string "finiquito_doc_content_type"
    t.integer "finiquito_doc_file_size"
    t.datetime "finiquito_doc_updated_at"
    t.bigint "guard_id"
    t.index ["guard_id"], name: "index_settlements_on_guard_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vacations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "days_taken"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "vacacion_doc_file_name"
    t.string "vacacion_doc_content_type"
    t.integer "vacacion_doc_file_size"
    t.datetime "vacacion_doc_updated_at"
    t.bigint "guard_id"
    t.index ["guard_id"], name: "index_vacations_on_guard_id"
  end

end
