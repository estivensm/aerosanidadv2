# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  nombre      :string
#  descripcion :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


class Rol < ActiveRecord::Base
  has_many :users, dependent: :destroy


  validates :nombre, :presence => { :message => " es un Campo Obligatorio"}
  validates :descripcion, :presence => { :message => " es un Campo Obligatorio"}

  def self.search(search)
    where("nombre like '%#{search}%'  or descripcion like '%#{search}%'")
  end

end
