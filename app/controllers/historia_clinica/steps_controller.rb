class HistoriaClinica::StepsController < ApplicationController
  include Wicked::Wizard
  steps *HistoriaClinica.form_steps

  def show
    @historia_clinica = HistoriaClinica.find(params[:historia_clinica_id])
    @paciente = Paciente.find(params[:paciente_id])
    render_wizard

  end

  def update
    @historia_clinica = HistoriaClinica.find(params[:historia_clinica_id])
    @historia_clinica.update(historia_clinica_params(step))
    render_wizard @historia_clinica
  end

  private

  def historia_clinica_params(step)

    permitted_attributes = case step
       when "a_historia_clinica"
          [
           :p_primer_nombre,
           :p_segundo_nombre,
           :p_primer_apellido,
           :p_segundo_apellido,
           :p_email,
           :p_tipo_documento,
           :p_documento,
           :p_fecha_nacimiento,
           :p_genero,
           :p_profesion,
           :p_tipo_sangre,
           :p_nacionalidad,
           :p_direccion,
           :user_id,
           :registro_medico,
           :p_ciudad,
           :p_departamento,
           :paciente_id,
           :a_auxiliar,
           :a_aeropuerto,
           :a_cove,
           :a_movil_servicio,
           :tipo_de_vuelo,
           :a_condicion,
           :a_tipo_servicio,
           :a_empresa,
           :a_lugar_de_atencion,
           :a_origen,
           :a_destino,
           :a_nombre_acompañante,
           :a_parentesco,
           :a_telefono,
           :arl,
           :eps,
           :a_motivo_de_consulta,
           :a_enfermedad_actual,
           :p_tipo_edad,
           :p_edad,
           :latitude,
           :longitude
          ]

       when "b_antecedentes"

          [
           :b_neonatales,
           :b_neonatales_descripcion,
           :b_patologicos,
           :b_patologicos_descripcion,
           :b_quirurgicos,
           :b_quirurgicos_descripcion,
           :b_farmacologicos,
           :b_farmacologicos_descripcion,
           :b_alergicos,
           :b_alergicos_descripcion,
           :b_toxicos,
           :b_toxicos_descripcion,
           :b_traumaticos,
           :b_traumaticos_descripcion,
           :b_hospitalarios,
           :b_hospitalarios_descripcion,
           :b_atep_laboral,
           :b_atep_laboral_descripcion,
           :b_familiares,
           :b_familiar_descripcion,
           :b_inmunologicos,
           :b_inmunologios_descripcion,
           :b_asociado_viajes_de_vuelo,
           :b_asociado_viajes_de_vuelo_descripcion,
           :b_ciclo_menstrual,
           :b_edad_gestacional,
           :b_eco,
           :b_menarquia,
           :b_fecha_ultima_citologia,
           :b_fecha_ultima_mamografia,
           :b_fum,
           :b_embarazo,
           :b_g,
           :b_p,
           :b_c,
           :b_a,
           :b_m,
           :b_v,
           :b_e,
           :s2_validation
          ]

       when "c_revision_sistemas"
          [
           :c_cardiovascular,
           :c_cardiovascular_descripcion,
           :c_respiratorio,
           :c_respiratorio_descripcion,
           :c_abdominal,
           :c_abdominal_descripcion,
           :c_genito_urinario,
           :c_genito_urinario_descripcion,
           :c_neurologico,
           :c_neurologico_descripcion,
           :c_mental,
           :c_mental_descripcion,
           :c_organo_de_los_sentidos,
           :c_organo_de_los_sentidos_descripcion,
           :c_musculo_esqueletico,
           :c_musculo_esqueletico_descripcion,
           :c_piel_y_faneras,
           :c_piel_y_faneras_descripcion,
           :s3_validation
          ]
       when "d_examen_fisico"


          [
           :d_ta_mmgh_diastole,
           :d_ta_mmgh_sistole,
           :d_frecuencia_cardiaca,
           :d_frecuencia_respiratoria,
           :d_sat_of_o_ambiente,
           :d_sat_of_o_suplementario,
           :d_temperatura,
           :d_peso_en_kilogramos,
           :d_talla_en_centimetros,
           :d_glucometria,
           :d_cabeza,
           :d_cabeza_descripcion,
           :d_cuello,
           :d_cuello_descripcion,
           :d_caja_toracica,
           :d_caja_toracica_descripcion,
           :d_corazon,
           :d_corazon_descripcion,
           :d_pulmones,
           :d_pulmones_descripcion,
           :d_abdomen,
           :d_abdomen_descripcion,
           :d_genito_urinario,
           :d_genito_urinario_descripcion,
           :d_recto,
           :d_recto_descripcion,
           :d_extremidades,
           :d_extremidades_descripcion,
           :d_piel_y_faneras,
           :d_piel_y_faneras_descripcion,
           :d_musculo_esqueletico,
           :d_musculo_esqueletico_descripcion,
           :d_mental,
           :d_mental_descripcion,
           :d_neurologico,
           :d_neurologico_descripcion,
           :d_apertura_ocular,
           :d_respuesta_verbal,
           :d_respuesta_motora,
           :s4_validation,
           :d_escala_de_glasgow, d_otros_signos:[],  d_alteracion:[]
          ]

       when "e_impresion_diagnostica"
          [
           :e_analisis,
           :e_impresion_diagnostica,
           :e_plan_y_tratamiento,
           :cie10_id,
           :cie102_id,
           :diagnostico_id,
           :patologias,
           :otras_patologias,
           :accidentes_especiales,
           :notificacion_obligatoria,
           :emergencias,
           :e_observaciones_recomendaciones,
           :e_evento_adverso,
           :e_estado_historia_clinica,
           :e_glucometria1,
           :e_hora1,
           :e_glucometria2,
           :e_hora2,
           :e_electrocardiograma,
           :s5_validation
          ]
       end




    params.require(:historia_clinica).permit(permitted_attributes).merge(form_step: step)
  end

end