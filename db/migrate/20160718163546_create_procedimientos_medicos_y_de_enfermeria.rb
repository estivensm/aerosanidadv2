class CreateProcedimientosMedicosYDeEnfermeria < ActiveRecord::Migration
  def change
    create_table :procedimientos_medicos_y_de_enfermeria do |t|
      t.references :user, index: true, foreign_key: true
      t.references :aeropuerto, index: true, foreign_key: true
      t.date :fecha_novedad
      t.integer :cantidad_acompañamiento_a_pacientes_trasladados_en_ambulancia
      t.integer :cantidad_actividades_de_capacitacion_propias_y_a_otro_personal
      t.integer :cantidad_atencion_de_consultas_medicas
      t.integer :cantidad_atencion_de_llamadas_de_emergencias_de_aeronaves
      t.integer :cantidad_atencion_de_llamadas_de_emergencias_de_pasajeros_tripulaciones
      t.integer :cantidad_atencion_de_pacientes_urgentes
      t.integer :cantidad_atencion_de_pacientes_lesionados_en_el_aeropuerto
      t.integer :cantidad_autorizacion_de_organos_componente_anatomico
      t.integer :cantidad_verificacion_de_cadaveres
      t.integer :cantidad_ambulancias_externas
      t.integer :cantidad_electrocardiogramas
      t.integer :cantidad_glucometria
      t.integer :cantidad_monitoreo_de_pacientes
      t.integer :cantidad_reunion_de_personal_y_administrativas
      t.integer :cantidad_reuniones_administrativas_academicas
      t.integer :cantidad_salida_por_llamadas_de_accidentes_externos
      t.integer :cantidad_servicios_de_ambulancias_de_sanidad
      t.integer :cantidad_servicios_de_silla_de_rueda
      t.integer :cantidad_suminitro_de_medicamentos_iv_im
      t.integer :cantidad_suminitro_de_medicamentos_vo
      t.integer :cantidad_suturas_curaciones_y_lavados
      t.integer :cantidad_terapias_respiratorias_y_nebulizaciones
      t.integer :cantidad_tomas_y_controles_de_tension_arterial

      t.timestamps null: false
    end
  end
end
