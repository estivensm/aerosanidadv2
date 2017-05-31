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

ActiveRecord::Schema.define(version: 20160721163910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aeropuertos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "ciudad_id"
    t.string   "departamento"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "aeropuertos", ["ciudad_id"], name: "index_aeropuertos_on_ciudad_id", using: :btree

  create_table "arles", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cie10s", force: :cascade do |t|
    t.string   "familia"
    t.string   "codigo"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ciudades", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "pais_codigo"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "diagnosticos", force: :cascade do |t|
    t.integer  "historia_clinica_id"
    t.integer  "cie10_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "diagnosticos", ["cie10_id"], name: "index_diagnosticos_on_cie10_id", using: :btree
  add_index "diagnosticos", ["historia_clinica_id"], name: "index_diagnosticos_on_historia_clinica_id", using: :btree

  create_table "emergencias", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "aeropuerto_id"
    t.date     "fecha_novedad"
    t.string   "emergencias"
    t.text     "notas_de_la_emergencia"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "emergencias", ["aeropuerto_id"], name: "index_emergencias_on_aeropuerto_id", using: :btree
  add_index "emergencias", ["user_id"], name: "index_emergencias_on_user_id", using: :btree

  create_table "empresas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "epses", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historias_clinicas", force: :cascade do |t|
    t.string   "p_primer_nombre"
    t.string   "p_segundo_nombre"
    t.string   "p_primer_apellido"
    t.string   "p_segundo_apellido"
    t.string   "p_email"
    t.string   "p_tipo_documento"
    t.string   "p_documento"
    t.date     "p_fecha_nacimiento"
    t.string   "p_genero"
    t.string   "p_profesion"
    t.string   "p_tipo_sangre"
    t.string   "p_nacionalidad"
    t.string   "p_direccion"
    t.string   "registro_medico"
    t.integer  "user_id"
    t.string   "p_ciudad"
    t.string   "p_departamento"
    t.integer  "paciente_id"
    t.string   "a_auxiliar"
    t.integer  "aeropuerto_id"
    t.integer  "cie10_id"
    t.string   "tipo_de_vuelo"
    t.string   "a_cove"
    t.string   "a_movil_servicio"
    t.string   "a_condicion"
    t.string   "a_tipo_servicio"
    t.string   "a_empresa"
    t.string   "a_lugar_de_atencion"
    t.string   "a_origen"
    t.string   "a_destino"
    t.string   "a_nombre_acompañante"
    t.string   "a_parentesco"
    t.string   "a_telefono"
    t.string   "arl"
    t.string   "eps"
    t.text     "a_motivo_de_consulta"
    t.text     "a_enfermedad_actual"
    t.string   "b_neonatales"
    t.text     "b_neonatales_descripcion"
    t.string   "b_patologicos"
    t.text     "b_patologicos_descripcion"
    t.string   "b_quirurgicos"
    t.text     "b_quirurgicos_descripcion"
    t.string   "b_farmacologicos"
    t.text     "b_farmacologicos_descripcion"
    t.string   "b_alergicos"
    t.text     "b_alergicos_descripcion"
    t.string   "b_toxicos"
    t.text     "b_toxicos_descripcion"
    t.string   "b_traumaticos"
    t.text     "b_traumaticos_descripcion"
    t.string   "b_hospitalarios"
    t.text     "b_hospitalarios_descripcion"
    t.string   "b_atep_laboral"
    t.text     "b_atep_laboral_descripcion"
    t.string   "b_familiares"
    t.text     "b_familiar_descripcion"
    t.string   "b_inmunologicos"
    t.text     "b_inmunologios_descripcion"
    t.string   "b_asociado_viajes_de_vuelo"
    t.text     "b_asociado_viajes_de_vuelo_descripcion"
    t.string   "b_ciclo_menstrual"
    t.string   "b_edad_gestacional"
    t.string   "b_eco"
    t.string   "b_menarquia"
    t.string   "b_fecha_ultima_citologia"
    t.string   "b_fecha_ultima_mamografia"
    t.string   "b_fum"
    t.string   "b_embarazo"
    t.string   "b_g"
    t.string   "b_p"
    t.string   "b_c"
    t.string   "b_a"
    t.string   "b_m"
    t.string   "b_v"
    t.string   "b_e"
    t.string   "c_cardiovascular"
    t.text     "c_cardiovascular_descripcion"
    t.string   "c_respiratorio"
    t.text     "c_respiratorio_descripcion"
    t.string   "c_abdominal"
    t.text     "c_abdominal_descripcion"
    t.string   "c_genito_urinario"
    t.text     "c_genito_urinario_descripcion"
    t.string   "c_neurologico"
    t.text     "c_neurologico_descripcion"
    t.string   "c_mental"
    t.text     "c_mental_descripcion"
    t.string   "c_organo_de_los_sentidos"
    t.string   "c_organo_de_los_sentidos_descripcion"
    t.string   "c_musculo_esqueletico"
    t.text     "c_musculo_esqueletico_descripcion"
    t.string   "c_piel_y_faneras"
    t.text     "c_piel_y_faneras_descripcion"
    t.string   "d_ta_mmgh_diastole"
    t.string   "d_ta_mmgh_sistole"
    t.string   "d_frecuencia_cardiaca"
    t.string   "d_frecuencia_respiratoria"
    t.string   "d_sat_of_o_ambiente"
    t.string   "d_sat_of_o_suplementario"
    t.string   "d_temperatura"
    t.string   "d_peso_en_kilogramos"
    t.string   "d_talla_en_centimetros"
    t.string   "d_glucometria"
    t.string   "d_cabeza"
    t.text     "d_cabeza_descripcion"
    t.text     "d_cuello"
    t.text     "d_cuello_descripcion"
    t.string   "d_caja_toracica"
    t.text     "d_caja_toracica_descripcion"
    t.string   "d_corazon"
    t.text     "d_corazon_descripcion"
    t.string   "d_pulmones"
    t.text     "d_pulmones_descripcion"
    t.string   "d_abdomen"
    t.text     "d_abdomen_descripcion"
    t.string   "d_genito_urinario"
    t.text     "d_genito_urinario_descripcion"
    t.string   "d_recto"
    t.text     "d_recto_descripcion"
    t.string   "d_extremidades"
    t.text     "d_extremidades_descripcion"
    t.string   "d_piel_y_faneras"
    t.text     "d_piel_y_faneras_descripcion"
    t.string   "d_musculo_esqueletico"
    t.text     "d_musculo_esqueletico_descripcion"
    t.string   "d_mental"
    t.text     "d_mental_descripcion"
    t.string   "d_neurologico"
    t.text     "d_neurologico_descripcion"
    t.string   "d_alteracion"
    t.integer  "d_apertura_ocular"
    t.integer  "d_respuesta_verbal"
    t.integer  "d_respuesta_motora"
    t.string   "d_otros_signos"
    t.integer  "d_escala_de_glasgow"
    t.text     "e_analisis"
    t.text     "e_observaciones_recomendaciones"
    t.text     "e_evento_adverso"
    t.string   "patologias"
    t.string   "otras_patologias"
    t.string   "accidentes_especiales"
    t.string   "notificacion_obligatoria"
    t.string   "emergencias"
    t.boolean  "e_estado_historia_clinica"
    t.string   "e_estado_paciente"
    t.string   "e_glucometria1"
    t.string   "e_hora1"
    t.string   "e_glucometria2"
    t.string   "e_hora2"
    t.text     "e_electrocardiograma"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "p_edad"
    t.string   "p_tipo_edad"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.boolean  "s2_validation"
    t.boolean  "s3_validation"
    t.boolean  "s4_validation"
    t.boolean  "s5_validation"
    t.integer  "diagnostico_id"
    t.string   "post_operatorios_varios"
  end

  add_index "historias_clinicas", ["aeropuerto_id"], name: "index_historias_clinicas_on_aeropuerto_id", using: :btree
  add_index "historias_clinicas", ["cie10_id"], name: "index_historias_clinicas_on_cie10_id", using: :btree
  add_index "historias_clinicas", ["user_id"], name: "index_historias_clinicas_on_user_id", using: :btree

  create_table "mailboxer_conversation_opt_outs", force: :cascade do |t|
    t.integer "unsubscriber_id"
    t.string  "unsubscriber_type"
    t.integer "conversation_id"
  end

  add_index "mailboxer_conversation_opt_outs", ["conversation_id"], name: "index_mailboxer_conversation_opt_outs_on_conversation_id", using: :btree
  add_index "mailboxer_conversation_opt_outs", ["unsubscriber_id", "unsubscriber_type"], name: "index_mailboxer_conversation_opt_outs_on_unsubscriber_id_type", using: :btree

  create_table "mailboxer_conversations", force: :cascade do |t|
    t.string   "subject",    default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "mailboxer_notifications", force: :cascade do |t|
    t.string   "type"
    t.text     "body"
    t.string   "subject",              default: ""
    t.integer  "sender_id"
    t.string   "sender_type"
    t.integer  "conversation_id"
    t.boolean  "draft",                default: false
    t.string   "notification_code"
    t.integer  "notified_object_id"
    t.string   "notified_object_type"
    t.string   "attachment"
    t.datetime "updated_at",                           null: false
    t.datetime "created_at",                           null: false
    t.boolean  "global",               default: false
    t.datetime "expires"
  end

  add_index "mailboxer_notifications", ["conversation_id"], name: "index_mailboxer_notifications_on_conversation_id", using: :btree
  add_index "mailboxer_notifications", ["notified_object_id", "notified_object_type"], name: "index_mailboxer_notifications_on_notified_object_id_and_type", using: :btree
  add_index "mailboxer_notifications", ["sender_id", "sender_type"], name: "index_mailboxer_notifications_on_sender_id_and_sender_type", using: :btree
  add_index "mailboxer_notifications", ["type"], name: "index_mailboxer_notifications_on_type", using: :btree

  create_table "mailboxer_receipts", force: :cascade do |t|
    t.integer  "receiver_id"
    t.string   "receiver_type"
    t.integer  "notification_id",                            null: false
    t.boolean  "is_read",                    default: false
    t.boolean  "trashed",                    default: false
    t.boolean  "deleted",                    default: false
    t.string   "mailbox_type",    limit: 25
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "mailboxer_receipts", ["notification_id"], name: "index_mailboxer_receipts_on_notification_id", using: :btree
  add_index "mailboxer_receipts", ["receiver_id", "receiver_type"], name: "index_mailboxer_receipts_on_receiver_id_and_receiver_type", using: :btree

  create_table "notas_progreso", force: :cascade do |t|
    t.string   "nombre_paciente"
    t.string   "documento_paciente"
    t.string   "tipo_documento"
    t.string   "procedimientos_medicos_y_de_enfermeria"
    t.text     "descripcion"
    t.integer  "historia_clinica_id"
    t.integer  "user_id"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "procedimientos_medicos_y_de_enfermeria2"
    t.string   "cantidad_procedimientos"
  end

  add_index "notas_progreso", ["historia_clinica_id"], name: "index_notas_progreso_on_historia_clinica_id", using: :btree
  add_index "notas_progreso", ["user_id"], name: "index_notas_progreso_on_user_id", using: :btree

  create_table "pacientes", force: :cascade do |t|
    t.string   "ciudad"
    t.string   "primer_nombre"
    t.string   "segundo_nombre"
    t.string   "primer_apellido"
    t.string   "segundo_apellido"
    t.text     "nombre_completo"
    t.string   "email"
    t.string   "tipo_documento"
    t.string   "documento"
    t.date     "fecha_nacimiento"
    t.string   "genero"
    t.string   "profesion"
    t.string   "tipo_sangre"
    t.string   "nacionalidad"
    t.string   "direccion"
    t.string   "condicion"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "pais_codigo"
  end

  add_index "pacientes", ["user_id"], name: "index_pacientes_on_user_id", using: :btree

  create_table "paises", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procedimientos", force: :cascade do |t|
    t.string   "tratamiento"
    t.string   "via_acceso"
    t.text     "descripcion"
    t.integer  "historia_clinica_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "procedimientos", ["historia_clinica_id"], name: "index_procedimientos_on_historia_clinica_id", using: :btree

  create_table "procedimientos_medicos_y_de_enfermeria", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "aeropuerto_id"
    t.date     "fecha_novedad"
    t.integer  "cantidad_acompañamiento_a_pacientes_trasladados_en_ambulancia"
    t.integer  "cantidad_actividades_de_capacitacion_propias_y_a_otro_personal"
    t.integer  "cantidad_atencion_de_consultas_medicas"
    t.integer  "cantidad_atencion_de_llamadas_de_emergencias_de_aeronaves"
    t.integer  "cantidad_atencion_de_llamadas_de_emergencias_de_pasajeros_tripu"
    t.integer  "cantidad_atencion_de_pacientes_urgentes"
    t.integer  "cantidad_atencion_de_pacientes_lesionados_en_el_aeropuerto"
    t.integer  "cantidad_autorizacion_de_organos_componente_anatomico"
    t.integer  "cantidad_verificacion_de_cadaveres"
    t.integer  "cantidad_ambulancias_externas"
    t.integer  "cantidad_electrocardiogramas"
    t.integer  "cantidad_glucometria"
    t.integer  "cantidad_monitoreo_de_pacientes"
    t.integer  "cantidad_reunion_de_personal_y_administrativas"
    t.integer  "cantidad_reuniones_administrativas_academicas"
    t.integer  "cantidad_salida_por_llamadas_de_accidentes_externos"
    t.integer  "cantidad_servicios_de_ambulancias_de_sanidad"
    t.integer  "cantidad_servicios_de_silla_de_rueda"
    t.integer  "cantidad_suminitro_de_medicamentos_iv_im"
    t.integer  "cantidad_suminitro_de_medicamentos_vo"
    t.integer  "cantidad_suturas_curaciones_y_lavados"
    t.integer  "cantidad_terapias_respiratorias_y_nebulizaciones"
    t.integer  "cantidad_tomas_y_controles_de_tension_arterial"
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
  end

  add_index "procedimientos_medicos_y_de_enfermeria", ["aeropuerto_id"], name: "index_procedimientos_medicos_y_de_enfermeria_on_aeropuerto_id", using: :btree
  add_index "procedimientos_medicos_y_de_enfermeria", ["user_id"], name: "index_procedimientos_medicos_y_de_enfermeria_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_file"
    t.decimal  "price"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "aprobado_login"
    t.string   "email",                                       null: false
    t.string   "nombre_usuario"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "tipo_documento"
    t.string   "documento"
    t.string   "registro_medico"
    t.integer  "rol_id"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.string   "picture"
    t.integer  "failed_logins_count",             default: 0
    t.datetime "lock_expires_at"
    t.string   "unlock_token"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "last_login_from_ip_address"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["activation_token"], name: "index_users_on_activation_token", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["last_logout_at", "last_activity_at"], name: "index_users_on_last_logout_at_and_last_activity_at", using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", using: :btree

  add_foreign_key "aeropuertos", "ciudades"
  add_foreign_key "diagnosticos", "cie10s"
  add_foreign_key "diagnosticos", "historias_clinicas"
  add_foreign_key "emergencias", "aeropuertos"
  add_foreign_key "emergencias", "users"
  add_foreign_key "historias_clinicas", "aeropuertos"
  add_foreign_key "historias_clinicas", "cie10s"
  add_foreign_key "historias_clinicas", "users"
  add_foreign_key "mailboxer_conversation_opt_outs", "mailboxer_conversations", column: "conversation_id", name: "mb_opt_outs_on_conversations_id"
  add_foreign_key "mailboxer_notifications", "mailboxer_conversations", column: "conversation_id", name: "notifications_on_conversation_id"
  add_foreign_key "mailboxer_receipts", "mailboxer_notifications", column: "notification_id", name: "receipts_on_notification_id"
  add_foreign_key "notas_progreso", "historias_clinicas"
  add_foreign_key "notas_progreso", "users"
  add_foreign_key "pacientes", "users"
  add_foreign_key "procedimientos", "historias_clinicas"
  add_foreign_key "procedimientos_medicos_y_de_enfermeria", "aeropuertos"
  add_foreign_key "procedimientos_medicos_y_de_enfermeria", "users"
  add_foreign_key "products", "users"
end
