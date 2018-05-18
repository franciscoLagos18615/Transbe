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

ActiveRecord::Schema.define(version: 20180518172913) do

  create_table "bills", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text "description"
    t.decimal "ingress", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contract_guards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "start_date"
    t.datetime "finish_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contract_installations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "start_date"
    t.datetime "finish_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

  create_table "installations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.integer "number_guards"
    t.integer "additional_guards"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sallary_settlements", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "cost"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vacations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "days_taken"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
