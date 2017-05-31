require 'rails_helper'

RSpec.describe "paises/new", type: :view do
  before(:each) do
    assign(:pais, Pais.new(
      :nombre => "MyString"
    ))
  end

  it "renders new pais form" do
    render

    assert_select "form[action=?][method=?]", paises_path, "post" do

      assert_select "input#pais_nombre[name=?]", "pais[nombre]"
    end
  end
end
