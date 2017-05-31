# == Schema Information
#
# Table name: empresas
#
#  id         :integer          not null, primary key
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Empresa < ActiveRecord::Base
end
