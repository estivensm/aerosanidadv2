require 'rails_helper'

RSpec.describe "procedimientos/index", type: :view do
  before(:each) do
    assign(:procedimientos, [
      Procedimiento.create!(
        :tratamiento => "Tratamiento",
        :via_acceso => "Via Acceso",
        :descripcion => "MyText",
        :glucometria1 => 1,
        :glucometria2 => 2,
        :electrocardiograma => "MyText"
      ),
      Procedimiento.create!(
        :tratamiento => "Tratamiento",
        :via_acceso => "Via Acceso",
        :descripcion => "MyText",
        :glucometria1 => 1,
        :glucometria2 => 2,
        :electrocardiograma => "MyText"
      )
    ])
  end

  it "renders a list of procedimientos" do
    render
    assert_select "tr>td", :text => "Tratamiento".to_s, :count => 2
    assert_select "tr>td", :text => "Via Acceso".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
