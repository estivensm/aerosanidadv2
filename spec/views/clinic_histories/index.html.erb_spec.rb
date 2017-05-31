require 'rails_helper'

RSpec.describe "clinic_histories/index", type: :view do
  before(:each) do
    assign(:clinic_histories, [
      ClinicHistory.create!(
        :first_name => "First Name",
        :second_name => "Second Name",
        :first_surname => "First Surname",
        :second_surname => "Second Surname",
        :email => "Email",
        :type_document => "Type Document",
        :document => "Document",
        :days_age => 1,
        :months_age => 2,
        :years_age => 3,
        :gender => "Gender",
        :profession => "Profession",
        :blood_type => "Blood Type",
        :nacionality => "Nacionality",
        :eps => nil,
        :arl => nil,
        :address => "Address",
        :condition => 4,
        :accompanist_name => "Accompanist Name",
        :relationship => 5,
        :phone => "Phone",
        :city => nil,
        :user => nil,
        :city => "City",
        :department => "Department",
        :user => nil,
        :cove => "Cove",
        :mobiel_service => "Mobiel Service",
        :airport => nil,
        :type_service => 6,
        :patient => nil,
        :origin => "Origin",
        :destination => "Destination",
        :company => "Company",
        :accompanist_name => "Accompanist Name",
        :relationship => 7,
        :phone => "Phone",
        :reason_for_consultation => "MyText",
        :current_illness => "MyText",
        :neunatales => false,
        :neunatales_description => "MyText",
        :patologicos => false,
        :patologicos_description => "MyText",
        :quirurgicos => false,
        :quirurgicos_description => "MyText",
        :farmacologicos => false,
        :farmacologicos_description => "MyText",
        :alergicos => false,
        :alergicos_description => "MyText",
        :toxicos => false,
        :toxicos_description => "MyText",
        :traumaticos => false,
        :traumaticos_description => "MyText",
        :hospitables => false,
        :hospitables_description => "MyText",
        :atep_laboral => false,
        :atep_laboral_description => "MyText",
        :familiar => false,
        :familiar_description => "MyText",
        :inmunologicos => false,
        :inmunologios_description => "MyText",
        :asociado_viajes_de_vuelo => false,
        :asociado_viajes_de_vuelo_description => "MyText",
        :menstrual_cycle => 8,
        :gestational_age => "Gestational Age",
        :eco => "Eco",
        :fum => 9,
        :pregnancy => false,
        :g => "G",
        :p => "P",
        :c => "C",
        :a => "A",
        :m => "M",
        :v => "V",
        :e => "E",
        :cardiovascular => false,
        :cardiovascular_description => "MyText",
        :respiratory => false,
        :respiratory_description => "MyText",
        :abdominal => false,
        :abdominal_description => "MyText",
        :genito_urinario => false,
        :genito_urinario_description => "MyText",
        :neurological => "Neurological",
        :neurological_description => "MyText",
        :mental => false,
        :mental_description => "MyText",
        :sense_organ => false,
        :sense_organ_description => "MyText",
        :skeletal_muscle => false,
        :skeletal_muscle_description => "MyText",
        :skin_and_appendages => "Skin And Appendages",
        :skin_and_appendages_description => "MyText",
        :ta_mmgh => "Ta Mmgh",
        :heart_rate => "Heart Rate",
        :breathing_frequency => "Breathing Frequency",
        :sat_of_o_ambiente => "Sat Of O Ambiente",
        :sat_of_o_supplementary => "Sat Of O Supplementary",
        :temperature => "Temperature",
        :weight_in_kilograms => "Weight In Kilograms",
        :height_in_centimeters => "Height In Centimeters",
        :glucose => "Glucose",
        :measurement => "Measurement",
        :head => false,
        :head_description => "MyText",
        :sense_organ => false,
        :sense_organ_description => "Sense Organ Description",
        :neck => false,
        :neck_description => "MyText",
        :rib_cage => false,
        :rib_cage_description => "MyText",
        :heart => false,
        :heart_description => "MyText",
        :lungs => false,
        :lungs_description => "MyText",
        :abdomen => false,
        :abdomen_description => "MyText",
        :genitourinary => false,
        :genitourinary_description => "MyText",
        :rectum => false,
        :rectum_description => "MyText",
        :extremities => false,
        :extremities_description => "MyText",
        :skin_and_appendages => false,
        :skin_and_appendages_description => "MyText",
        :skeletal_muscle => false,
        :skeletal_muscle_description => "MyText",
        :mental => false,
        :mental_description => "MyText",
        :neurological => false,
        :neurological_description => "MyText",
        :alteration => 10,
        :eye_opening => 11,
        :verbal_answer => 12,
        :motor_response => 13,
        :other_signs => 14,
        :analysis => "MyText",
        :print_diagnosed => "MyText",
        :plan_and_treatment => "MyText",
        :observations_recommendations => "MyText"
      ),
      ClinicHistory.create!(
        :first_name => "First Name",
        :second_name => "Second Name",
        :first_surname => "First Surname",
        :second_surname => "Second Surname",
        :email => "Email",
        :type_document => "Type Document",
        :document => "Document",
        :days_age => 1,
        :months_age => 2,
        :years_age => 3,
        :gender => "Gender",
        :profession => "Profession",
        :blood_type => "Blood Type",
        :nacionality => "Nacionality",
        :eps => nil,
        :arl => nil,
        :address => "Address",
        :condition => 4,
        :accompanist_name => "Accompanist Name",
        :relationship => 5,
        :phone => "Phone",
        :city => nil,
        :user => nil,
        :city => "City",
        :department => "Department",
        :user => nil,
        :cove => "Cove",
        :mobiel_service => "Mobiel Service",
        :airport => nil,
        :type_service => 6,
        :patient => nil,
        :origin => "Origin",
        :destination => "Destination",
        :company => "Company",
        :accompanist_name => "Accompanist Name",
        :relationship => 7,
        :phone => "Phone",
        :reason_for_consultation => "MyText",
        :current_illness => "MyText",
        :neunatales => false,
        :neunatales_description => "MyText",
        :patologicos => false,
        :patologicos_description => "MyText",
        :quirurgicos => false,
        :quirurgicos_description => "MyText",
        :farmacologicos => false,
        :farmacologicos_description => "MyText",
        :alergicos => false,
        :alergicos_description => "MyText",
        :toxicos => false,
        :toxicos_description => "MyText",
        :traumaticos => false,
        :traumaticos_description => "MyText",
        :hospitables => false,
        :hospitables_description => "MyText",
        :atep_laboral => false,
        :atep_laboral_description => "MyText",
        :familiar => false,
        :familiar_description => "MyText",
        :inmunologicos => false,
        :inmunologios_description => "MyText",
        :asociado_viajes_de_vuelo => false,
        :asociado_viajes_de_vuelo_description => "MyText",
        :menstrual_cycle => 8,
        :gestational_age => "Gestational Age",
        :eco => "Eco",
        :fum => 9,
        :pregnancy => false,
        :g => "G",
        :p => "P",
        :c => "C",
        :a => "A",
        :m => "M",
        :v => "V",
        :e => "E",
        :cardiovascular => false,
        :cardiovascular_description => "MyText",
        :respiratory => false,
        :respiratory_description => "MyText",
        :abdominal => false,
        :abdominal_description => "MyText",
        :genito_urinario => false,
        :genito_urinario_description => "MyText",
        :neurological => "Neurological",
        :neurological_description => "MyText",
        :mental => false,
        :mental_description => "MyText",
        :sense_organ => false,
        :sense_organ_description => "MyText",
        :skeletal_muscle => false,
        :skeletal_muscle_description => "MyText",
        :skin_and_appendages => "Skin And Appendages",
        :skin_and_appendages_description => "MyText",
        :ta_mmgh => "Ta Mmgh",
        :heart_rate => "Heart Rate",
        :breathing_frequency => "Breathing Frequency",
        :sat_of_o_ambiente => "Sat Of O Ambiente",
        :sat_of_o_supplementary => "Sat Of O Supplementary",
        :temperature => "Temperature",
        :weight_in_kilograms => "Weight In Kilograms",
        :height_in_centimeters => "Height In Centimeters",
        :glucose => "Glucose",
        :measurement => "Measurement",
        :head => false,
        :head_description => "MyText",
        :sense_organ => false,
        :sense_organ_description => "Sense Organ Description",
        :neck => false,
        :neck_description => "MyText",
        :rib_cage => false,
        :rib_cage_description => "MyText",
        :heart => false,
        :heart_description => "MyText",
        :lungs => false,
        :lungs_description => "MyText",
        :abdomen => false,
        :abdomen_description => "MyText",
        :genitourinary => false,
        :genitourinary_description => "MyText",
        :rectum => false,
        :rectum_description => "MyText",
        :extremities => false,
        :extremities_description => "MyText",
        :skin_and_appendages => false,
        :skin_and_appendages_description => "MyText",
        :skeletal_muscle => false,
        :skeletal_muscle_description => "MyText",
        :mental => false,
        :mental_description => "MyText",
        :neurological => false,
        :neurological_description => "MyText",
        :alteration => 10,
        :eye_opening => 11,
        :verbal_answer => 12,
        :motor_response => 13,
        :other_signs => 14,
        :analysis => "MyText",
        :print_diagnosed => "MyText",
        :plan_and_treatment => "MyText",
        :observations_recommendations => "MyText"
      )
    ])
  end

  it "renders a list of clinic_histories" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Second Name".to_s, :count => 2
    assert_select "tr>td", :text => "First Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Second Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Type Document".to_s, :count => 2
    assert_select "tr>td", :text => "Document".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Profession".to_s, :count => 2
    assert_select "tr>td", :text => "Blood Type".to_s, :count => 2
    assert_select "tr>td", :text => "Nacionality".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Accompanist Name".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Cove".to_s, :count => 2
    assert_select "tr>td", :text => "Mobiel Service".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Origin".to_s, :count => 2
    assert_select "tr>td", :text => "Destination".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Accompanist Name".to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => "Gestational Age".to_s, :count => 2
    assert_select "tr>td", :text => "Eco".to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "G".to_s, :count => 2
    assert_select "tr>td", :text => "P".to_s, :count => 2
    assert_select "tr>td", :text => "C".to_s, :count => 2
    assert_select "tr>td", :text => "A".to_s, :count => 2
    assert_select "tr>td", :text => "M".to_s, :count => 2
    assert_select "tr>td", :text => "V".to_s, :count => 2
    assert_select "tr>td", :text => "E".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Neurological".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Skin And Appendages".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Ta Mmgh".to_s, :count => 2
    assert_select "tr>td", :text => "Heart Rate".to_s, :count => 2
    assert_select "tr>td", :text => "Breathing Frequency".to_s, :count => 2
    assert_select "tr>td", :text => "Sat Of O Ambiente".to_s, :count => 2
    assert_select "tr>td", :text => "Sat Of O Supplementary".to_s, :count => 2
    assert_select "tr>td", :text => "Temperature".to_s, :count => 2
    assert_select "tr>td", :text => "Weight In Kilograms".to_s, :count => 2
    assert_select "tr>td", :text => "Height In Centimeters".to_s, :count => 2
    assert_select "tr>td", :text => "Glucose".to_s, :count => 2
    assert_select "tr>td", :text => "Measurement".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Sense Organ Description".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
