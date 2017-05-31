# == Schema Information
#
# Table name: procedimientos
#
#  id                  :integer          not null, primary key
#  tratamiento         :string
#  via_acceso          :string
#  descripcion         :text
#  historia_clinica_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'rails_helper'

RSpec.describe Procedimiento, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
