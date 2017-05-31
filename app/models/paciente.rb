# == Schema Information
#
# Table name: pacientes
#
#  id               :integer          not null, primary key
#  ciudad           :string
#  primer_nombre    :string
#  segundo_nombre   :string
#  primer_apellido  :string
#  segundo_apellido :string
#  nombre_completo  :text
#  email            :string
#  tipo_documento   :string
#  documento        :string
#  fecha_nacimiento :date
#  genero           :string
#  profesion        :string
#  tipo_sangre      :string
#  nacionalidad     :string
#  direccion        :string
#  condicion        :string
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  pais_codigo      :string
#

class Paciente < ActiveRecord::Base
  belongs_to :eps
  belongs_to :arl
  # belongs_to :ciudad
  belongs_to :user
  has_many :historias_clinicas
   has_many :progress_notes

  # accepts_nested_attributes_for :ciudad, :reject_if => lambda {|a| a[:nombre].blank?}

  validates :primer_nombre, :presence => { :message => " es un Campo Obligatorio"}
  validates :primer_apellido, :presence => { :message => " es un Campo Obligatorio"}
  validates :tipo_documento, :presence => { :message => " es un Campo Obligatorio"}
  validates :documento, :presence => { :message => " es un Campo Obligatorio"}
  validates :genero, :presence => { :message => " es un Campo Obligatorio"}
  validates :fecha_nacimiento, :presence => { :message => " es un Campo Obligatorio"}
  validates :tipo_sangre, :presence => { :message => " es un Campo Obligatorio"}
  validates :profesion, :presence => { :message => " es un Campo Obligatorio"}
  validates :direccion, :presence => { :message => " es un Campo Obligatorio"}
  validates :nacionalidad, :presence => { :message => " es un Campo Obligatorio"}
  validates :documento, :uniqueness =>  { message: "  Ya Fue registrado" }
  validates :email, :uniqueness =>  { message: " Ya Fue registrado" }, :if => :condition_testing?

  def condition_testing?
    !(email == "N/A")
  end




  def self.search(search)
    where("(primer_nombre || ' ' || segundo_nombre || ' ' || primer_apellido  || ' ' || segundo_apellido) like '%#{search}%'  or 
      segundo_nombre like '%#{search}%' or 
      segundo_apellido like '%#{search}%' or 
      email like '%#{search}%' or 
      documento like '%#{search}%' or direccion like
    '%#{search}%'").order(:id)
  end

end
