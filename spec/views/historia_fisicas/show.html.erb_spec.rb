require 'rails_helper'

RSpec.describe "historia_fisicas/show", type: :view do
  before(:each) do
    @historia_fisica = assign(:historia_fisica, HistoriaFisica.create!(
      :user_id => 1,
      :paciente_id => 2,
      :descripcion => "MyText",
      :tipo => "Tipo",
      :adjunto => "Adjunto"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/Adjunto/)
  end
end
