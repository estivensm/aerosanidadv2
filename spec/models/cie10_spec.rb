# == Schema Information
#
# Table name: cie10s
#
#  id          :integer          not null, primary key
#  familia     :string
#  codigo      :string
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Cie10, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
