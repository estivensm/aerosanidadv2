require 'rails_helper'

RSpec.describe "paises/edit", type: :view do
  before(:each) do
    @pais = assign(:pais, Pais.create!(
      :nombre => "MyString"
    ))
  end

  it "renders the edit pais form" do
    render

    assert_select "form[action=?][method=?]", pais_path(@pais), "post" do

      assert_select "input#pais_nombre[name=?]", "pais[nombre]"
    end
  end
end
