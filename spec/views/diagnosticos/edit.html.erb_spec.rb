require 'rails_helper'

RSpec.describe "diagnosticos/edit", type: :view do
  before(:each) do
    @diagnostico = assign(:diagnostico, Diagnostico.create!(
      :familia => "MyString",
      :codigo => "MyString",
      :simbolo => "MyString",
      :descripcion => "MyText",
      :codigo => "MyString",
      :historia_clinica => nil
    ))
  end

  it "renders the edit diagnostico form" do
    render

    assert_select "form[action=?][method=?]", diagnostico_path(@diagnostico), "post" do

      assert_select "input#diagnostico_familia[name=?]", "diagnostico[familia]"

      assert_select "input#diagnostico_codigo[name=?]", "diagnostico[codigo]"

      assert_select "input#diagnostico_simbolo[name=?]", "diagnostico[simbolo]"

      assert_select "textarea#diagnostico_descripcion[name=?]", "diagnostico[descripcion]"

      assert_select "input#diagnostico_codigo[name=?]", "diagnostico[codigo]"

      assert_select "input#diagnostico_historia_clinica_id[name=?]", "diagnostico[historia_clinica_id]"
    end
  end
end
