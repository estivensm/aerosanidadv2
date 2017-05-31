# == Schema Information
#
# Table name: progress_notes
#
#  id                :integer          not null, primary key
#  patient_name      :string
#  patient_document  :string
#  type_document     :string
#  age               :integer
#  medical_record    :string
#  description       :text
#  clinic_history_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe ProgressNote, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
