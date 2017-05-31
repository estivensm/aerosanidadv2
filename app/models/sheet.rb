# == Schema Information
#
# Table name: sheets
#
#  id          :integer          not null, primary key
#  nombre      :string
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Sheet < ActiveRecord::Base
	has_many :diagnosticos

	accepts_nested_attributes_for :diagnosticos, reject_if: :all_blank, allow_destroy: true
end
