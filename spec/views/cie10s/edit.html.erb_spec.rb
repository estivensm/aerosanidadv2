require 'rails_helper'

RSpec.describe "cie10s/edit", type: :view do
  before(:each) do
    @cie10 = assign(:cie10, Cie10.create!(
      :familia => "MyString",
      :codigo => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders the edit cie10 form" do
    render

    assert_select "form[action=?][method=?]", cie10_path(@cie10), "post" do

      assert_select "input#cie10_familia[name=?]", "cie10[familia]"

      assert_select "input#cie10_codigo[name=?]", "cie10[codigo]"

      assert_select "textarea#cie10_descripcion[name=?]", "cie10[descripcion]"
    end
  end
end
