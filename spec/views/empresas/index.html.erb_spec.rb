require 'rails_helper'

RSpec.describe "empresas/index", type: :view do
  before(:each) do
    assign(:empresas, [
      Empresa.create!(
        :nombre => "Nombre"
      ),
      Empresa.create!(
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of empresas" do
    render
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
