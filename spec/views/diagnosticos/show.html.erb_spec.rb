require 'rails_helper'

RSpec.describe "diagnosticos/show", type: :view do
  before(:each) do
    @diagnostico = assign(:diagnostico, Diagnostico.create!(
      :familia => "Familia",
      :codigo => "Codigo",
      :simbolo => "Simbolo",
      :descripcion => "MyText",
      :codigo => "Codigo",
      :historia_clinica => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Familia/)
    expect(rendered).to match(/Codigo/)
    expect(rendered).to match(/Simbolo/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Codigo/)
    expect(rendered).to match(//)
  end
end
