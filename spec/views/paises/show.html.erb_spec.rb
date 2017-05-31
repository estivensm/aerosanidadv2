require 'rails_helper'

RSpec.describe "paises/show", type: :view do
  before(:each) do
    @pais = assign(:pais, Pais.create!(
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nombre/)
  end
end
