# == Schema Information
#
# Table name: ciudades
#
#  id          :integer          not null, primary key
#  nombre      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  pais_codigo :string
#

class Ciudad < ActiveRecord::Base

	#has_many :pacientes
	# accepts_nested_attributes_for :pacientes, :reject_if => proc { |attributes| attributes.any? {|k,v| v.blank?} }

	#validates :nombre, :on => :create, :presence => { :message => " es un Campo Obligatorio"}


  def self.search(search)
    where("pais_codigo like '%#{search}%'  or nombre like '%#{search}%'")
  end

	
end
