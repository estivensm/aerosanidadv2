require 'rails_helper'

RSpec.describe "progress_notes/show", type: :view do
  before(:each) do
    @progress_note = assign(:progress_note, ProgressNote.create!(
      :patient_name => "Patient Name",
      :patient_document => "Patient Document",
      :type_document => 1,
      :age => 2,
      :medical_record => "Medical Record",
      :description => "MyText",
      :clinic_history => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Patient Name/)
    expect(rendered).to match(/Patient Document/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Medical Record/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
