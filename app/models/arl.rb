# == Schema Information
#
# Table name: arles
#
#  id         :integer          not null, primary key
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Arl < ActiveRecord::Base

  #validates :nombre, :on => :create, :presence => { :message => " es un Campo Obligatorio"}
	
  def self.search(search)
    where("nombre like '%#{search}%'").order(:id)
  end

end
