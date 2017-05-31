# == Schema Information
#
# Table name: diagnosticos
#
#  id                  :integer          not null, primary key
#  historia_clinica_id :integer
#  cie10_id            :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'rails_helper'

RSpec.describe Diagnostico, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
