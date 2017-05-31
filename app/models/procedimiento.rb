# == Schema Information
#
# Table name: procedimientos
#
#  id                  :integer          not null, primary key
#  tratamiento         :string
#  via_acceso          :string
#  descripcion         :text
#  historia_clinica_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Procedimiento < ActiveRecord::Base
	belongs_to :historia_clinica

end
