# == Schema Information
#
# Table name: diagnosticos
#
#  id                  :integer          not null, primary key
#  historia_clinica_id :integer
#  cie10_id            :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Diagnostico < ActiveRecord::Base
  belongs_to :historia_clinica
	belongs_to :cie10
  #validates :codigo, :presence => { message: " Es un Campo Obligatorio" }, if: -> { required_for_step?(:e_impresion_diagnostica) }
  #validates :descripcion, :presence => { message: " Es un Campo Obligatorio" }, if: -> { required_for_step?(:e_impresion_diagnostica) }


end
