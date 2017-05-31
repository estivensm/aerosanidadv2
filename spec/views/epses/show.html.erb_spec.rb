require 'rails_helper'

RSpec.describe "epses/show", type: :view do
  before(:each) do
    @eps = assign(:eps, Eps.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
