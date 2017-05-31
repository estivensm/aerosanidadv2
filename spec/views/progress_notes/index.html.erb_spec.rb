require 'rails_helper'

RSpec.describe "progress_notes/index", type: :view do
  before(:each) do
    assign(:progress_notes, [
      ProgressNote.create!(
        :patient_name => "Patient Name",
        :patient_document => "Patient Document",
        :type_document => 1,
        :age => 2,
        :medical_record => "Medical Record",
        :description => "MyText",
        :clinic_history => nil
      ),
      ProgressNote.create!(
        :patient_name => "Patient Name",
        :patient_document => "Patient Document",
        :type_document => 1,
        :age => 2,
        :medical_record => "Medical Record",
        :description => "MyText",
        :clinic_history => nil
      )
    ])
  end

  it "renders a list of progress_notes" do
    render
    assert_select "tr>td", :text => "Patient Name".to_s, :count => 2
    assert_select "tr>td", :text => "Patient Document".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Medical Record".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
