require 'rails_helper'

RSpec.describe "roles/edit", type: :view do
  before(:each) do
    @rol = assign(:rol, Rol.create!(
      :name => "MyString",
      :restrictions => "MyString"
    ))
  end

  it "renders the edit rol form" do
    render

    assert_select "form[action=?][method=?]", rol_path(@rol), "post" do

      assert_select "input#rol_name[name=?]", "rol[name]"

      assert_select "input#rol_restrictions[name=?]", "rol[restrictions]"
    end
  end
end
