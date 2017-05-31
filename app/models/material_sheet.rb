# == Schema Information
#
# Table name: material_sheets
#
#  id          :integer          not null, primary key
#  material_id :string
#  cantidad    :integer
#  sheet_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class MaterialSheet < ActiveRecord::Base
  belongs_to :sheet

end
