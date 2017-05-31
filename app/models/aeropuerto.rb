# == Schema Information
#
# Table name: aeropuertos
#
#  id           :integer          not null, primary key
#  nombre       :string
#  ciudad_id    :integer
#  departamento :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Aeropuerto < ActiveRecord::Base
  belongs_to :ciudad
  has_many :historias_clinicas
  has_many :procedimientos_medicos_y_de_enfermeria
  #has_many :historias_clinicas, :class_name => "HistoriaClinica", :foreign_key => "a_origen"


  has_many :historias_clinicas, :class_name => "HistoriaClinica", :foreign_key => "cie10_id"

	#validates :nombre, :presence => {:message => 'Name cannot be blank, Task not saved'}
	

  #validates :ciudad_id, :presence => {:message => 'Name cannot be blank, Task not saved'}
	#validates :departamento, :presence => {:message => 'Name cannot be blank, Task not saved'}

  def self.search(search)
    where("nombre like '%#{search}%'  or departamento like '%#{search}%'")
  end

end