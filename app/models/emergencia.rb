# == Schema Information
#
# Table name: emergencias
#
#  id                     :integer          not null, primary key
#  user_id                :integer
#  aeropuerto_id          :integer
#  fecha_novedad          :date
#  emergencias            :string
#  notas_de_la_emergencia :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Emergencia < ActiveRecord::Base
  belongs_to :user
  belongs_to :aeropuerto


  def self.search(search)
    where("emergencias like '%#{search}%'  or notas_de_la_emergencia like '%#{search}%' ")
  end

  
end
