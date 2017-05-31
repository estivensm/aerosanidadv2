require 'rails_helper'

RSpec.describe "emergencias/show", type: :view do
  before(:each) do
    @emergencia = assign(:emergencia, Emergencia.create!(
      :user => nil,
      :aeropuerto => nil,
      :emergencias => "Emergencias",
      :notas_de_la_emergencia => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Emergencias/)
    expect(rendered).to match(/MyText/)
  end
end
