require 'rails_helper'

RSpec.describe "cie10s/new", type: :view do
  before(:each) do
    assign(:cie10, Cie10.new(
      :familia => "MyString",
      :codigo => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders new cie10 form" do
    render

    assert_select "form[action=?][method=?]", cie10s_path, "post" do

      assert_select "input#cie10_familia[name=?]", "cie10[familia]"

      assert_select "input#cie10_codigo[name=?]", "cie10[codigo]"

      assert_select "textarea#cie10_descripcion[name=?]", "cie10[descripcion]"
    end
  end
end
