# == Schema Information
#
# Table name: epses
#
#  id         :integer          not null, primary key
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#



class Eps < ActiveRecord::Base
	has_many :pacientes
  #validates :nombre, :on => :create, :presence => { :message => " es un Campo Obligatorio"}
   
  def self.search(search)
    search.present? ? where(["nombre LIKE ?" ,"%#{search}%"]) : all
  end

end
