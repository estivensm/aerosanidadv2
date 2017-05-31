require 'rails_helper'

RSpec.describe "procedimientos_medicos_y_de_enfermeria/index", type: :view do
  before(:each) do
    assign(:procedimientos_medicos_y_de_enfermeria, [
      ProcedimientoMedicoYDeEnfermeria.create!(
        :user => nil,
        :aeropuerto => nil,
        :cantidad_acompañamiento_a_pacientes_trasladados_en_ambulancia => 1,
        :cantidad_actividades_de_capacitacion_propias_y_a_otro_personal => 2,
        :cantidad_atencion_de_consultas_medicas => 3,
        :cantidad_atencion_de_llamadas_de_emergencias_de_aeronaves => 4,
        :cantidad_atencion_de_llamadas_de_emergencias_de_pasajeros_tripulaciones => 5,
        :cantidad_atencion_de_pacientes_urgentes => 6,
        :cantidad_atencion_de_pacientes_lesionados_en_el_aeropuerto => 7,
        :cantidad_autorizacion_de_organos_componente_anatomico => 8,
        :cantidad_verificacion_de_cadaveres => 9,
        :cantidad_ambulancias_externas => 10,
        :cantidad_electrocardiogramas => 11,
        :cantidad_glucometria => 12,
        :cantidad_monitoreo_de_pacientes => 13,
        :cantidad_reunion_de_personal_y_administrativas => 14,
        :cantidad_reuniones_administrativas_academicas => 15,
        :cantidad_salida_por_llamadas_de_accidentes_externos => 16,
        :cantidad_servicios_de_ambulancias_de_sanidad => 17,
        :cantidad_servicios_de_silla_de_rueda => 18,
        :cantidad_suminitro_de_medicamentos_iv_im => 19,
        :cantidad_suminitro_de_medicamentos_vo => 20,
        :cantidad_suturas_curaciones_y_lavados => 21,
        :cantidad_terapias_respiratorias_y_nebulizaciones => 22,
        :cantidad_tomas_y_controles_de_tension_arterial => 23
      ),
      ProcedimientoMedicoYDeEnfermeria.create!(
        :user => nil,
        :aeropuerto => nil,
        :cantidad_acompañamiento_a_pacientes_trasladados_en_ambulancia => 1,
        :cantidad_actividades_de_capacitacion_propias_y_a_otro_personal => 2,
        :cantidad_atencion_de_consultas_medicas => 3,
        :cantidad_atencion_de_llamadas_de_emergencias_de_aeronaves => 4,
        :cantidad_atencion_de_llamadas_de_emergencias_de_pasajeros_tripulaciones => 5,
        :cantidad_atencion_de_pacientes_urgentes => 6,
        :cantidad_atencion_de_pacientes_lesionados_en_el_aeropuerto => 7,
        :cantidad_autorizacion_de_organos_componente_anatomico => 8,
        :cantidad_verificacion_de_cadaveres => 9,
        :cantidad_ambulancias_externas => 10,
        :cantidad_electrocardiogramas => 11,
        :cantidad_glucometria => 12,
        :cantidad_monitoreo_de_pacientes => 13,
        :cantidad_reunion_de_personal_y_administrativas => 14,
        :cantidad_reuniones_administrativas_academicas => 15,
        :cantidad_salida_por_llamadas_de_accidentes_externos => 16,
        :cantidad_servicios_de_ambulancias_de_sanidad => 17,
        :cantidad_servicios_de_silla_de_rueda => 18,
        :cantidad_suminitro_de_medicamentos_iv_im => 19,
        :cantidad_suminitro_de_medicamentos_vo => 20,
        :cantidad_suturas_curaciones_y_lavados => 21,
        :cantidad_terapias_respiratorias_y_nebulizaciones => 22,
        :cantidad_tomas_y_controles_de_tension_arterial => 23
      )
    ])
  end

  it "renders a list of procedimientos_medicos_y_de_enfermeria" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => 15.to_s, :count => 2
    assert_select "tr>td", :text => 16.to_s, :count => 2
    assert_select "tr>td", :text => 17.to_s, :count => 2
    assert_select "tr>td", :text => 18.to_s, :count => 2
    assert_select "tr>td", :text => 19.to_s, :count => 2
    assert_select "tr>td", :text => 20.to_s, :count => 2
    assert_select "tr>td", :text => 21.to_s, :count => 2
    assert_select "tr>td", :text => 22.to_s, :count => 2
    assert_select "tr>td", :text => 23.to_s, :count => 2
  end
end
