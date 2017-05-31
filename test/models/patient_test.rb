# == Schema Information
#
# Table name: patients
#
#  id             :integer          not null, primary key
#  city_id        :integer
#  first_name     :string
#  second_name    :string
#  first_surname  :string
#  second_surname :string
#  email          :string
#  type_document  :integer
#  document       :string
#  days_age       :integer
#  months_age     :integer
#  years_age      :integer
#  birthdate      :date
#  gender         :integer
#  profession     :string
#  blood_type     :integer
#  nacionality    :integer
#  address        :string
#  condition      :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  country_code   :string
#

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
