require 'rails_helper'

RSpec.describe "arles/show", type: :view do
  before(:each) do
    @arl = assign(:arl, Arl.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
