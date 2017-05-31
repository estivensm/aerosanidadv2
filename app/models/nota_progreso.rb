# == Schema Information
#
# Table name: notas_progreso
#
#  id                                      :integer          not null, primary key
#  nombre_paciente                         :string
#  documento_paciente                      :string
#  tipo_documento                          :string
#  procedimientos_medicos_y_de_enfermeria  :string
#  descripcion                             :text
#  historia_clinica_id                     :integer
#  user_id                                 :integer
#  created_at                              :datetime         not null
#  updated_at                              :datetime         not null
#  procedimientos_medicos_y_de_enfermeria2 :string
#  cantidad_procedimientos                 :string
#

class NotaProgreso < ActiveRecord::Base
  belongs_to :historia_clinica
  belongs_to :user


  validates :descripcion, :presence => {:message => ' es un Campo Obligatorio'}

  def self.search(search)
    where("nombre_paciente like '%#{search}%'  or documento_paciente like '%#{search}%'")
  end



end
