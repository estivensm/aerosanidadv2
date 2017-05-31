require 'rails_helper'

RSpec.describe "procedimientos_medicos_y_de_enfermeria/show", type: :view do
  before(:each) do
    @procedimiento_medico_y_de_enfermeria = assign(:procedimiento_medico_y_de_enfermeria, ProcedimientoMedicoYDeEnfermeria.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/15/)
    expect(rendered).to match(/16/)
    expect(rendered).to match(/17/)
    expect(rendered).to match(/18/)
    expect(rendered).to match(/19/)
    expect(rendered).to match(/20/)
    expect(rendered).to match(/21/)
    expect(rendered).to match(/22/)
    expect(rendered).to match(/23/)
  end
end
