require 'rails_helper'

RSpec.describe "clinic_histories/show", type: :view do
  before(:each) do
    @clinic_history = assign(:clinic_history, ClinicHistory.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Second Name/)
    expect(rendered).to match(/First Surname/)
    expect(rendered).to match(/Second Surname/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Type Document/)
    expect(rendered).to match(/Document/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Profession/)
    expect(rendered).to match(/Blood Type/)
    expect(rendered).to match(/Nacionality/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Accompanist Name/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Department/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Cove/)
    expect(rendered).to match(/Mobiel Service/)
    expect(rendered).to match(//)
    expect(rendered).to match(/6/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Origin/)
    expect(rendered).to match(/Destination/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Accompanist Name/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/Gestational Age/)
    expect(rendered).to match(/Eco/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/G/)
    expect(rendered).to match(/P/)
    expect(rendered).to match(/C/)
    expect(rendered).to match(/A/)
    expect(rendered).to match(/M/)
    expect(rendered).to match(/V/)
    expect(rendered).to match(/E/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Neurological/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Skin And Appendages/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Ta Mmgh/)
    expect(rendered).to match(/Heart Rate/)
    expect(rendered).to match(/Breathing Frequency/)
    expect(rendered).to match(/Sat Of O Ambiente/)
    expect(rendered).to match(/Sat Of O Supplementary/)
    expect(rendered).to match(/Temperature/)
    expect(rendered).to match(/Weight In Kilograms/)
    expect(rendered).to match(/Height In Centimeters/)
    expect(rendered).to match(/Glucose/)
    expect(rendered).to match(/Measurement/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Sense Organ Description/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
