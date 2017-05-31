require 'rails_helper'

RSpec.describe "diagnosticos/new", type: :view do
  before(:each) do
    assign(:diagnostico, Diagnostico.new(
      :familia => "MyString",
      :codigo => "MyString",
      :simbolo => "MyString",
      :descripcion => "MyText",
      :codigo => "MyString",
      :historia_clinica => nil
    ))
  end

  it "renders new diagnostico form" do
    render

    assert_select "form[action=?][method=?]", diagnosticos_path, "post" do

      assert_select "input#diagnostico_familia[name=?]", "diagnostico[familia]"

      assert_select "input#diagnostico_codigo[name=?]", "diagnostico[codigo]"

      assert_select "input#diagnostico_simbolo[name=?]", "diagnostico[simbolo]"

      assert_select "textarea#diagnostico_descripcion[name=?]", "diagnostico[descripcion]"

      assert_select "input#diagnostico_codigo[name=?]", "diagnostico[codigo]"

      assert_select "input#diagnostico_historia_clinica_id[name=?]", "diagnostico[historia_clinica_id]"
    end
  end
end
