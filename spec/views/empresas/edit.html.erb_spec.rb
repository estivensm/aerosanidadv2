require 'rails_helper'

RSpec.describe "empresas/edit", type: :view do
  before(:each) do
    @empresa = assign(:empresa, Empresa.create!(
      :nombre => "MyString"
    ))
  end

  it "renders the edit empresa form" do
    render

    assert_select "form[action=?][method=?]", empresa_path(@empresa), "post" do

      assert_select "input#empresa_nombre[name=?]", "empresa[nombre]"
    end
  end
end
