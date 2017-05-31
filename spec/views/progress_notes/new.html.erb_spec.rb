require 'rails_helper'

RSpec.describe "progress_notes/new", type: :view do
  before(:each) do
    assign(:progress_note, ProgressNote.new(
      :patient_name => "MyString",
      :patient_document => "MyString",
      :type_document => 1,
      :age => 1,
      :medical_record => "MyString",
      :description => "MyText",
      :clinic_history => nil
    ))
  end

  it "renders new progress_note form" do
    render

    assert_select "form[action=?][method=?]", progress_notes_path, "post" do

      assert_select "input#progress_note_patient_name[name=?]", "progress_note[patient_name]"

      assert_select "input#progress_note_patient_document[name=?]", "progress_note[patient_document]"

      assert_select "input#progress_note_type_document[name=?]", "progress_note[type_document]"

      assert_select "input#progress_note_age[name=?]", "progress_note[age]"

      assert_select "input#progress_note_medical_record[name=?]", "progress_note[medical_record]"

      assert_select "textarea#progress_note_description[name=?]", "progress_note[description]"

      assert_select "input#progress_note_clinic_history_id[name=?]", "progress_note[clinic_history_id]"
    end
  end
end
