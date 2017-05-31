require 'rails_helper'

RSpec.describe "cie10s/show", type: :view do
  before(:each) do
    @cie10 = assign(:cie10, Cie10.create!(
      :familia => "Familia",
      :codigo => "Codigo",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Familia/)
    expect(rendered).to match(/Codigo/)
    expect(rendered).to match(/MyText/)
  end
end
