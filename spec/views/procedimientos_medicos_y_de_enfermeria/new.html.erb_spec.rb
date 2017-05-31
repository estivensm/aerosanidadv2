require 'rails_helper'

RSpec.describe "procedimientos_medicos_y_de_enfermeria/new", type: :view do
  before(:each) do
    assign(:procedimiento_medico_y_de_enfermeria, ProcedimientoMedicoYDeEnfermeria.new(
      :user => nil,
      :aeropuerto => nil,
      :cantidad_acompañamiento_a_pacientes_trasladados_en_ambulancia => 1,
      :cantidad_actividades_de_capacitacion_propias_y_a_otro_personal => 1,
      :cantidad_atencion_de_consultas_medicas => 1,
      :cantidad_atencion_de_llamadas_de_emergencias_de_aeronaves => 1,
      :cantidad_atencion_de_llamadas_de_emergencias_de_pasajeros_tripulaciones => 1,
      :cantidad_atencion_de_pacientes_urgentes => 1,
      :cantidad_atencion_de_pacientes_lesionados_en_el_aeropuerto => 1,
      :cantidad_autorizacion_de_organos_componente_anatomico => 1,
      :cantidad_verificacion_de_cadaveres => 1,
      :cantidad_ambulancias_externas => 1,
      :cantidad_electrocardiogramas => 1,
      :cantidad_glucometria => 1,
      :cantidad_monitoreo_de_pacientes => 1,
      :cantidad_reunion_de_personal_y_administrativas => 1,
      :cantidad_reuniones_administrativas_academicas => 1,
      :cantidad_salida_por_llamadas_de_accidentes_externos => 1,
      :cantidad_servicios_de_ambulancias_de_sanidad => 1,
      :cantidad_servicios_de_silla_de_rueda => 1,
      :cantidad_suminitro_de_medicamentos_iv_im => 1,
      :cantidad_suminitro_de_medicamentos_vo => 1,
      :cantidad_suturas_curaciones_y_lavados => 1,
      :cantidad_terapias_respiratorias_y_nebulizaciones => 1,
      :cantidad_tomas_y_controles_de_tension_arterial => 1
    ))
  end

  it "renders new procedimiento_medico_y_de_enfermeria form" do
    render

    assert_select "form[action=?][method=?]", procedimientos_medicos_y_de_enfermeria_path, "post" do

      assert_select "input#procedimiento_medico_y_de_enfermeria_user_id[name=?]", "procedimiento_medico_y_de_enfermeria[user_id]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_aeropuerto_id[name=?]", "procedimiento_medico_y_de_enfermeria[aeropuerto_id]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_acompañamiento_a_pacientes_trasladados_en_ambulancia[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_acompañamiento_a_pacientes_trasladados_en_ambulancia]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_actividades_de_capacitacion_propias_y_a_otro_personal[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_actividades_de_capacitacion_propias_y_a_otro_personal]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_atencion_de_consultas_medicas[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_atencion_de_consultas_medicas]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_atencion_de_llamadas_de_emergencias_de_aeronaves[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_atencion_de_llamadas_de_emergencias_de_aeronaves]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_atencion_de_llamadas_de_emergencias_de_pasajeros_tripulaciones[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_atencion_de_llamadas_de_emergencias_de_pasajeros_tripulaciones]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_atencion_de_pacientes_urgentes[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_atencion_de_pacientes_urgentes]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_atencion_de_pacientes_lesionados_en_el_aeropuerto[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_atencion_de_pacientes_lesionados_en_el_aeropuerto]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_autorizacion_de_organos_componente_anatomico[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_autorizacion_de_organos_componente_anatomico]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_verificacion_de_cadaveres[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_verificacion_de_cadaveres]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_ambulancias_externas[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_ambulancias_externas]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_electrocardiogramas[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_electrocardiogramas]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_glucometria[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_glucometria]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_monitoreo_de_pacientes[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_monitoreo_de_pacientes]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_reunion_de_personal_y_administrativas[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_reunion_de_personal_y_administrativas]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_reuniones_administrativas_academicas[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_reuniones_administrativas_academicas]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_salida_por_llamadas_de_accidentes_externos[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_salida_por_llamadas_de_accidentes_externos]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_servicios_de_ambulancias_de_sanidad[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_servicios_de_ambulancias_de_sanidad]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_servicios_de_silla_de_rueda[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_servicios_de_silla_de_rueda]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_suminitro_de_medicamentos_iv_im[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_suminitro_de_medicamentos_iv_im]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_suminitro_de_medicamentos_vo[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_suminitro_de_medicamentos_vo]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_suturas_curaciones_y_lavados[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_suturas_curaciones_y_lavados]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_terapias_respiratorias_y_nebulizaciones[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_terapias_respiratorias_y_nebulizaciones]"

      assert_select "input#procedimiento_medico_y_de_enfermeria_cantidad_tomas_y_controles_de_tension_arterial[name=?]", "procedimiento_medico_y_de_enfermeria[cantidad_tomas_y_controles_de_tension_arterial]"
    end
  end
end
