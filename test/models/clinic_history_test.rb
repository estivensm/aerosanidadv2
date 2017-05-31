# == Schema Information
#
# Table name: clinic_histories
#
#  id                                   :integer          not null, primary key
#  first_name                           :string
#  second_name                          :string
#  first_surname                        :string
#  second_surname                       :string
#  email                                :string
#  type_document                        :string
#  document                             :string
#  days_age                             :integer
#  months_age                           :integer
#  years_age                            :integer
#  birthdate                            :date
#  gender                               :string
#  profession                           :string
#  blood_type                           :string
#  nacionality                          :string
#  eps_id                               :integer
#  arl_id                               :integer
#  address                              :string
#  condition                            :integer
#  accompanist_name                     :string
#  relationship                         :integer
#  phone                                :string
#  city_id                              :integer
#  user_id                              :integer
#  city                                 :string
#  department                           :string
#  cove                                 :string
#  mobiel_service                       :string
#  airport_id                           :integer
#  type_service                         :integer
#  patient_id                           :integer
#  origin                               :string
#  destination                          :string
#  company                              :string
#  reason_for_consultation              :text
#  current_illness                      :text
#  neunatales                           :boolean
#  neunatales_description               :text
#  patologicos                          :boolean
#  patologicos_description              :text
#  quirurgicos                          :boolean
#  quirurgicos_description              :text
#  farmacologicos                       :boolean
#  farmacologicos_description           :text
#  alergicos                            :boolean
#  alergicos_description                :text
#  toxicos                              :boolean
#  toxicos_description                  :text
#  traumaticos                          :boolean
#  traumaticos_description              :text
#  hospitables                          :boolean
#  hospitables_description              :text
#  atep_laboral                         :boolean
#  atep_laboral_description             :text
#  familiar                             :boolean
#  familiar_description                 :text
#  inmunologicos                        :boolean
#  inmunologios_description             :text
#  asociado_viajes_de_vuelo             :boolean
#  asociado_viajes_de_vuelo_description :text
#  menstrual_cycle                      :integer
#  gestational_age                      :string
#  eco                                  :string
#  fum                                  :integer
#  pregnancy                            :boolean
#  g                                    :string
#  p                                    :string
#  c                                    :string
#  a                                    :string
#  m                                    :string
#  v                                    :string
#  e                                    :string
#  cardiovascular                       :boolean
#  cardiovascular_description           :text
#  respiratory                          :boolean
#  respiratory_description              :text
#  abdominal                            :boolean
#  abdominal_description                :text
#  genito_urinario                      :boolean
#  genito_urinario_description          :text
#  neurological                         :boolean
#  neurological_description             :text
#  mental                               :boolean
#  mental_description                   :text
#  sense_organ                          :boolean
#  sense_organ_description              :string
#  skeletal_muscle                      :boolean
#  skeletal_muscle_description          :text
#  skin_and_appendages                  :boolean
#  skin_and_appendages_description      :text
#  ta_mmgh                              :string
#  heart_rate                           :string
#  breathing_frequency                  :string
#  sat_of_o_ambiente                    :string
#  sat_of_o_supplementary               :string
#  temperature                          :string
#  weight_in_kilograms                  :string
#  height_in_centimeters                :string
#  glucose                              :string
#  measurement                          :string
#  head                                 :boolean
#  head_description                     :text
#  neck                                 :boolean
#  neck_description                     :text
#  rib_cage                             :boolean
#  rib_cage_description                 :text
#  heart                                :boolean
#  heart_description                    :text
#  lungs                                :boolean
#  lungs_description                    :text
#  abdomen                              :boolean
#  abdomen_description                  :text
#  genitourinary                        :boolean
#  genitourinary_description            :text
#  rectum                               :boolean
#  rectum_description                   :text
#  extremities                          :boolean
#  extremities_description              :text
#  alteration                           :integer
#  eye_opening                          :integer
#  verbal_answer                        :integer
#  motor_response                       :integer
#  other_signs                          :integer
#  analysis                             :text
#  print_diagnosed                      :text
#  plan_and_treatment                   :text
#  observations_recommendations         :text
#  created_at                           :datetime         not null
#  updated_at                           :datetime         not null
#

require 'test_helper'

class ClinicHistoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
