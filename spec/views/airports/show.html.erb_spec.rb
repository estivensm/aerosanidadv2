require 'rails_helper'

RSpec.describe "airports/show", type: :view do
  before(:each) do
    @airport = assign(:airport, Airport.create!(
      :name => "Name",
      :city => nil,
      :department => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
