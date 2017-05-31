require 'rails_helper'

RSpec.describe "procedimientos/show", type: :view do
  before(:each) do
    @procedimiento = assign(:procedimiento, Procedimiento.create!(
      :tratamiento => "Tratamiento",
      :via_acceso => "Via Acceso",
      :descripcion => "MyText",
      :glucometria1 => 1,
      :glucometria2 => 2,
      :electrocardiograma => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tratamiento/)
    expect(rendered).to match(/Via Acceso/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
