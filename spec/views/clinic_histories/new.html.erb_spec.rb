require 'rails_helper'

RSpec.describe "clinic_histories/new", type: :view do
  before(:each) do
    assign(:clinic_history, ClinicHistory.new(
      :first_name => "MyString",
      :second_name => "MyString",
      :first_surname => "MyString",
      :second_surname => "MyString",
      :email => "MyString",
      :type_document => "MyString",
      :document => "MyString",
      :days_age => 1,
      :months_age => 1,
      :years_age => 1,
      :gender => "MyString",
      :profession => "MyString",
      :blood_type => "MyString",
      :nacionality => "MyString",
      :eps => nil,
      :arl => nil,
      :address => "MyString",
      :condition => 1,
      :accompanist_name => "MyString",
      :relationship => 1,
      :phone => "MyString",
      :city => nil,
      :user => nil,
      :city => "MyString",
      :department => "MyString",
      :user => nil,
      :cove => "MyString",
      :mobiel_service => "MyString",
      :airport => nil,
      :type_service => 1,
      :patient => nil,
      :origin => "MyString",
      :destination => "MyString",
      :company => "MyString",
      :accompanist_name => "MyString",
      :relationship => 1,
      :phone => "MyString",
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
      :menstrual_cycle => 1,
      :gestational_age => "MyString",
      :eco => "MyString",
      :fum => 1,
      :pregnancy => false,
      :g => "MyString",
      :p => "MyString",
      :c => "MyString",
      :a => "MyString",
      :m => "MyString",
      :v => "MyString",
      :e => "MyString",
      :cardiovascular => false,
      :cardiovascular_description => "MyText",
      :respiratory => false,
      :respiratory_description => "MyText",
      :abdominal => false,
      :abdominal_description => "MyText",
      :genito_urinario => false,
      :genito_urinario_description => "MyText",
      :neurological => "MyString",
      :neurological_description => "MyText",
      :mental => false,
      :mental_description => "MyText",
      :sense_organ => false,
      :sense_organ_description => "MyText",
      :skeletal_muscle => false,
      :skeletal_muscle_description => "MyText",
      :skin_and_appendages => "MyString",
      :skin_and_appendages_description => "MyText",
      :ta_mmgh => "MyString",
      :heart_rate => "MyString",
      :breathing_frequency => "MyString",
      :sat_of_o_ambiente => "MyString",
      :sat_of_o_supplementary => "MyString",
      :temperature => "MyString",
      :weight_in_kilograms => "MyString",
      :height_in_centimeters => "MyString",
      :glucose => "MyString",
      :measurement => "MyString",
      :head => false,
      :head_description => "MyText",
      :sense_organ => false,
      :sense_organ_description => "MyString",
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
      :alteration => 1,
      :eye_opening => 1,
      :verbal_answer => 1,
      :motor_response => 1,
      :other_signs => 1,
      :analysis => "MyText",
      :print_diagnosed => "MyText",
      :plan_and_treatment => "MyText",
      :observations_recommendations => "MyText"
    ))
  end

  it "renders new clinic_history form" do
    render

    assert_select "form[action=?][method=?]", clinic_histories_path, "post" do

      assert_select "input#clinic_history_first_name[name=?]", "clinic_history[first_name]"

      assert_select "input#clinic_history_second_name[name=?]", "clinic_history[second_name]"

      assert_select "input#clinic_history_first_surname[name=?]", "clinic_history[first_surname]"

      assert_select "input#clinic_history_second_surname[name=?]", "clinic_history[second_surname]"

      assert_select "input#clinic_history_email[name=?]", "clinic_history[email]"

      assert_select "input#clinic_history_type_document[name=?]", "clinic_history[type_document]"

      assert_select "input#clinic_history_document[name=?]", "clinic_history[document]"

      assert_select "input#clinic_history_days_age[name=?]", "clinic_history[days_age]"

      assert_select "input#clinic_history_months_age[name=?]", "clinic_history[months_age]"

      assert_select "input#clinic_history_years_age[name=?]", "clinic_history[years_age]"

      assert_select "input#clinic_history_gender[name=?]", "clinic_history[gender]"

      assert_select "input#clinic_history_profession[name=?]", "clinic_history[profession]"

      assert_select "input#clinic_history_blood_type[name=?]", "clinic_history[blood_type]"

      assert_select "input#clinic_history_nacionality[name=?]", "clinic_history[nacionality]"

      assert_select "input#clinic_history_eps_id[name=?]", "clinic_history[eps_id]"

      assert_select "input#clinic_history_arl_id[name=?]", "clinic_history[arl_id]"

      assert_select "input#clinic_history_address[name=?]", "clinic_history[address]"

      assert_select "input#clinic_history_condition[name=?]", "clinic_history[condition]"

      assert_select "input#clinic_history_accompanist_name[name=?]", "clinic_history[accompanist_name]"

      assert_select "input#clinic_history_relationship[name=?]", "clinic_history[relationship]"

      assert_select "input#clinic_history_phone[name=?]", "clinic_history[phone]"

      assert_select "input#clinic_history_city_id[name=?]", "clinic_history[city_id]"

      assert_select "input#clinic_history_user_id[name=?]", "clinic_history[user_id]"

      assert_select "input#clinic_history_city[name=?]", "clinic_history[city]"

      assert_select "input#clinic_history_department[name=?]", "clinic_history[department]"

      assert_select "input#clinic_history_user_id[name=?]", "clinic_history[user_id]"

      assert_select "input#clinic_history_cove[name=?]", "clinic_history[cove]"

      assert_select "input#clinic_history_mobiel_service[name=?]", "clinic_history[mobiel_service]"

      assert_select "input#clinic_history_airport_id[name=?]", "clinic_history[airport_id]"

      assert_select "input#clinic_history_type_service[name=?]", "clinic_history[type_service]"

      assert_select "input#clinic_history_patient_id[name=?]", "clinic_history[patient_id]"

      assert_select "input#clinic_history_origin[name=?]", "clinic_history[origin]"

      assert_select "input#clinic_history_destination[name=?]", "clinic_history[destination]"

      assert_select "input#clinic_history_company[name=?]", "clinic_history[company]"

      assert_select "input#clinic_history_accompanist_name[name=?]", "clinic_history[accompanist_name]"

      assert_select "input#clinic_history_relationship[name=?]", "clinic_history[relationship]"

      assert_select "input#clinic_history_phone[name=?]", "clinic_history[phone]"

      assert_select "textarea#clinic_history_reason_for_consultation[name=?]", "clinic_history[reason_for_consultation]"

      assert_select "textarea#clinic_history_current_illness[name=?]", "clinic_history[current_illness]"

      assert_select "input#clinic_history_neunatales[name=?]", "clinic_history[neunatales]"

      assert_select "textarea#clinic_history_neunatales_description[name=?]", "clinic_history[neunatales_description]"

      assert_select "input#clinic_history_patologicos[name=?]", "clinic_history[patologicos]"

      assert_select "textarea#clinic_history_patologicos_description[name=?]", "clinic_history[patologicos_description]"

      assert_select "input#clinic_history_quirurgicos[name=?]", "clinic_history[quirurgicos]"

      assert_select "textarea#clinic_history_quirurgicos_description[name=?]", "clinic_history[quirurgicos_description]"

      assert_select "input#clinic_history_farmacologicos[name=?]", "clinic_history[farmacologicos]"

      assert_select "textarea#clinic_history_farmacologicos_description[name=?]", "clinic_history[farmacologicos_description]"

      assert_select "input#clinic_history_alergicos[name=?]", "clinic_history[alergicos]"

      assert_select "textarea#clinic_history_alergicos_description[name=?]", "clinic_history[alergicos_description]"

      assert_select "input#clinic_history_toxicos[name=?]", "clinic_history[toxicos]"

      assert_select "textarea#clinic_history_toxicos_description[name=?]", "clinic_history[toxicos_description]"

      assert_select "input#clinic_history_traumaticos[name=?]", "clinic_history[traumaticos]"

      assert_select "textarea#clinic_history_traumaticos_description[name=?]", "clinic_history[traumaticos_description]"

      assert_select "input#clinic_history_hospitables[name=?]", "clinic_history[hospitables]"

      assert_select "textarea#clinic_history_hospitables_description[name=?]", "clinic_history[hospitables_description]"

      assert_select "input#clinic_history_atep_laboral[name=?]", "clinic_history[atep_laboral]"

      assert_select "textarea#clinic_history_atep_laboral_description[name=?]", "clinic_history[atep_laboral_description]"

      assert_select "input#clinic_history_familiar[name=?]", "clinic_history[familiar]"

      assert_select "textarea#clinic_history_familiar_description[name=?]", "clinic_history[familiar_description]"

      assert_select "input#clinic_history_inmunologicos[name=?]", "clinic_history[inmunologicos]"

      assert_select "textarea#clinic_history_inmunologios_description[name=?]", "clinic_history[inmunologios_description]"

      assert_select "input#clinic_history_asociado_viajes_de_vuelo[name=?]", "clinic_history[asociado_viajes_de_vuelo]"

      assert_select "textarea#clinic_history_asociado_viajes_de_vuelo_description[name=?]", "clinic_history[asociado_viajes_de_vuelo_description]"

      assert_select "input#clinic_history_menstrual_cycle[name=?]", "clinic_history[menstrual_cycle]"

      assert_select "input#clinic_history_gestational_age[name=?]", "clinic_history[gestational_age]"

      assert_select "input#clinic_history_eco[name=?]", "clinic_history[eco]"

      assert_select "input#clinic_history_fum[name=?]", "clinic_history[fum]"

      assert_select "input#clinic_history_pregnancy[name=?]", "clinic_history[pregnancy]"

      assert_select "input#clinic_history_g[name=?]", "clinic_history[g]"

      assert_select "input#clinic_history_p[name=?]", "clinic_history[p]"

      assert_select "input#clinic_history_c[name=?]", "clinic_history[c]"

      assert_select "input#clinic_history_a[name=?]", "clinic_history[a]"

      assert_select "input#clinic_history_m[name=?]", "clinic_history[m]"

      assert_select "input#clinic_history_v[name=?]", "clinic_history[v]"

      assert_select "input#clinic_history_e[name=?]", "clinic_history[e]"

      assert_select "input#clinic_history_cardiovascular[name=?]", "clinic_history[cardiovascular]"

      assert_select "textarea#clinic_history_cardiovascular_description[name=?]", "clinic_history[cardiovascular_description]"

      assert_select "input#clinic_history_respiratory[name=?]", "clinic_history[respiratory]"

      assert_select "textarea#clinic_history_respiratory_description[name=?]", "clinic_history[respiratory_description]"

      assert_select "input#clinic_history_abdominal[name=?]", "clinic_history[abdominal]"

      assert_select "textarea#clinic_history_abdominal_description[name=?]", "clinic_history[abdominal_description]"

      assert_select "input#clinic_history_genito_urinario[name=?]", "clinic_history[genito_urinario]"

      assert_select "textarea#clinic_history_genito_urinario_description[name=?]", "clinic_history[genito_urinario_description]"

      assert_select "input#clinic_history_neurological[name=?]", "clinic_history[neurological]"

      assert_select "textarea#clinic_history_neurological_description[name=?]", "clinic_history[neurological_description]"

      assert_select "input#clinic_history_mental[name=?]", "clinic_history[mental]"

      assert_select "textarea#clinic_history_mental_description[name=?]", "clinic_history[mental_description]"

      assert_select "input#clinic_history_sense_organ[name=?]", "clinic_history[sense_organ]"

      assert_select "textarea#clinic_history_sense_organ_description[name=?]", "clinic_history[sense_organ_description]"

      assert_select "input#clinic_history_skeletal_muscle[name=?]", "clinic_history[skeletal_muscle]"

      assert_select "textarea#clinic_history_skeletal_muscle_description[name=?]", "clinic_history[skeletal_muscle_description]"

      assert_select "input#clinic_history_skin_and_appendages[name=?]", "clinic_history[skin_and_appendages]"

      assert_select "textarea#clinic_history_skin_and_appendages_description[name=?]", "clinic_history[skin_and_appendages_description]"

      assert_select "input#clinic_history_ta_mmgh[name=?]", "clinic_history[ta_mmgh]"

      assert_select "input#clinic_history_heart_rate[name=?]", "clinic_history[heart_rate]"

      assert_select "input#clinic_history_breathing_frequency[name=?]", "clinic_history[breathing_frequency]"

      assert_select "input#clinic_history_sat_of_o_ambiente[name=?]", "clinic_history[sat_of_o_ambiente]"

      assert_select "input#clinic_history_sat_of_o_supplementary[name=?]", "clinic_history[sat_of_o_supplementary]"

      assert_select "input#clinic_history_temperature[name=?]", "clinic_history[temperature]"

      assert_select "input#clinic_history_weight_in_kilograms[name=?]", "clinic_history[weight_in_kilograms]"

      assert_select "input#clinic_history_height_in_centimeters[name=?]", "clinic_history[height_in_centimeters]"

      assert_select "input#clinic_history_glucose[name=?]", "clinic_history[glucose]"

      assert_select "input#clinic_history_measurement[name=?]", "clinic_history[measurement]"

      assert_select "input#clinic_history_head[name=?]", "clinic_history[head]"

      assert_select "textarea#clinic_history_head_description[name=?]", "clinic_history[head_description]"

      assert_select "input#clinic_history_sense_organ[name=?]", "clinic_history[sense_organ]"

      assert_select "input#clinic_history_sense_organ_description[name=?]", "clinic_history[sense_organ_description]"

      assert_select "input#clinic_history_neck[name=?]", "clinic_history[neck]"

      assert_select "textarea#clinic_history_neck_description[name=?]", "clinic_history[neck_description]"

      assert_select "input#clinic_history_rib_cage[name=?]", "clinic_history[rib_cage]"

      assert_select "textarea#clinic_history_rib_cage_description[name=?]", "clinic_history[rib_cage_description]"

      assert_select "input#clinic_history_heart[name=?]", "clinic_history[heart]"

      assert_select "textarea#clinic_history_heart_description[name=?]", "clinic_history[heart_description]"

      assert_select "input#clinic_history_lungs[name=?]", "clinic_history[lungs]"

      assert_select "textarea#clinic_history_lungs_description[name=?]", "clinic_history[lungs_description]"

      assert_select "input#clinic_history_abdomen[name=?]", "clinic_history[abdomen]"

      assert_select "textarea#clinic_history_abdomen_description[name=?]", "clinic_history[abdomen_description]"

      assert_select "input#clinic_history_genitourinary[name=?]", "clinic_history[genitourinary]"

      assert_select "textarea#clinic_history_genitourinary_description[name=?]", "clinic_history[genitourinary_description]"

      assert_select "input#clinic_history_rectum[name=?]", "clinic_history[rectum]"

      assert_select "textarea#clinic_history_rectum_description[name=?]", "clinic_history[rectum_description]"

      assert_select "input#clinic_history_extremities[name=?]", "clinic_history[extremities]"

      assert_select "textarea#clinic_history_extremities_description[name=?]", "clinic_history[extremities_description]"

      assert_select "input#clinic_history_skin_and_appendages[name=?]", "clinic_history[skin_and_appendages]"

      assert_select "textarea#clinic_history_skin_and_appendages_description[name=?]", "clinic_history[skin_and_appendages_description]"

      assert_select "input#clinic_history_skeletal_muscle[name=?]", "clinic_history[skeletal_muscle]"

      assert_select "textarea#clinic_history_skeletal_muscle_description[name=?]", "clinic_history[skeletal_muscle_description]"

      assert_select "input#clinic_history_mental[name=?]", "clinic_history[mental]"

      assert_select "textarea#clinic_history_mental_description[name=?]", "clinic_history[mental_description]"

      assert_select "input#clinic_history_neurological[name=?]", "clinic_history[neurological]"

      assert_select "textarea#clinic_history_neurological_description[name=?]", "clinic_history[neurological_description]"

      assert_select "input#clinic_history_alteration[name=?]", "clinic_history[alteration]"

      assert_select "input#clinic_history_eye_opening[name=?]", "clinic_history[eye_opening]"

      assert_select "input#clinic_history_verbal_answer[name=?]", "clinic_history[verbal_answer]"

      assert_select "input#clinic_history_motor_response[name=?]", "clinic_history[motor_response]"

      assert_select "input#clinic_history_other_signs[name=?]", "clinic_history[other_signs]"

      assert_select "textarea#clinic_history_analysis[name=?]", "clinic_history[analysis]"

      assert_select "textarea#clinic_history_print_diagnosed[name=?]", "clinic_history[print_diagnosed]"

      assert_select "textarea#clinic_history_plan_and_treatment[name=?]", "clinic_history[plan_and_treatment]"

      assert_select "textarea#clinic_history_observations_recommendations[name=?]", "clinic_history[observations_recommendations]"
    end
  end
end
