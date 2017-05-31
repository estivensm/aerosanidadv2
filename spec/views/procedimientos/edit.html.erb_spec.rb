require 'rails_helper'

RSpec.describe "procedimientos/edit", type: :view do
  before(:each) do
    @procedimiento = assign(:procedimiento, Procedimiento.create!(
      :tratamiento => "MyString",
      :via_acceso => "MyString",
      :descripcion => "MyText",
      :glucometria1 => 1,
      :glucometria2 => 1,
      :electrocardiograma => "MyText"
    ))
  end

  it "renders the edit procedimiento form" do
    render

    assert_select "form[action=?][method=?]", procedimiento_path(@procedimiento), "post" do

      assert_select "input#procedimiento_tratamiento[name=?]", "procedimiento[tratamiento]"

      assert_select "input#procedimiento_via_acceso[name=?]", "procedimiento[via_acceso]"

      assert_select "textarea#procedimiento_descripcion[name=?]", "procedimiento[descripcion]"

      assert_select "input#procedimiento_glucometria1[name=?]", "procedimiento[glucometria1]"

      assert_select "input#procedimiento_glucometria2[name=?]", "procedimiento[glucometria2]"

      assert_select "textarea#procedimiento_electrocardiograma[name=?]", "procedimiento[electrocardiograma]"
    end
  end
end
