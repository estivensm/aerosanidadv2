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

require 'rails_helper'

RSpec.describe Emergencia, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
