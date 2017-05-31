require 'rails_helper'

RSpec.describe "roles/new", type: :view do
  before(:each) do
    assign(:rol, Rol.new(
      :name => "MyString",
      :restrictions => "MyString"
    ))
  end

  it "renders new rol form" do
    render

    assert_select "form[action=?][method=?]", roles_path, "post" do

      assert_select "input#rol_name[name=?]", "rol[name]"

      assert_select "input#rol_restrictions[name=?]", "rol[restrictions]"
    end
  end
end
