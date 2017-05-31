# == Schema Information
#
# Table name: procedimientos_medicos_y_de_enfermeria
#
#  id                                                              :integer          not null, primary key
#  user_id                                                         :integer
#  aeropuerto_id                                                   :integer
#  fecha_novedad                                                   :date
#  cantidad_acompañamiento_a_pacientes_trasladados_en_ambulancia   :integer
#  cantidad_actividades_de_capacitacion_propias_y_a_otro_personal  :integer
#  cantidad_atencion_de_consultas_medicas                          :integer
#  cantidad_atencion_de_llamadas_de_emergencias_de_aeronaves       :integer
#  cantidad_atencion_de_llamadas_de_emergencias_de_pasajeros_tripu :integer
#  cantidad_atencion_de_pacientes_urgentes                         :integer
#  cantidad_atencion_de_pacientes_lesionados_en_el_aeropuerto      :integer
#  cantidad_autorizacion_de_organos_componente_anatomico           :integer
#  cantidad_verificacion_de_cadaveres                              :integer
#  cantidad_ambulancias_externas                                   :integer
#  cantidad_electrocardiogramas                                    :integer
#  cantidad_glucometria                                            :integer
#  cantidad_monitoreo_de_pacientes                                 :integer
#  cantidad_reunion_de_personal_y_administrativas                  :integer
#  cantidad_reuniones_administrativas_academicas                   :integer
#  cantidad_salida_por_llamadas_de_accidentes_externos             :integer
#  cantidad_servicios_de_ambulancias_de_sanidad                    :integer
#  cantidad_servicios_de_silla_de_rueda                            :integer
#  cantidad_suminitro_de_medicamentos_iv_im                        :integer
#  cantidad_suminitro_de_medicamentos_vo                           :integer
#  cantidad_suturas_curaciones_y_lavados                           :integer
#  cantidad_terapias_respiratorias_y_nebulizaciones                :integer
#  cantidad_tomas_y_controles_de_tension_arterial                  :integer
#  created_at                                                      :datetime         not null
#  updated_at                                                      :datetime         not null
#

require 'rails_helper'

RSpec.describe ProcedimientoMedicoYDeEnfermeria, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
