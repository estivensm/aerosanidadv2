# == Schema Information
#
# Table name: paises
#
#  id         :integer          not null, primary key
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pais < ActiveRecord::Base
end
