# == Schema Information
#
# Table name: cie10s
#
#  id          :integer          not null, primary key
#  familia     :string
#  codigo      :string
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cie10 < ActiveRecord::Base

  has_many :historias_clinicas
  has_many :diagnosticos 

end
