require 'rails_helper'

RSpec.describe "airports/index", type: :view do
  before(:each) do
    assign(:airports, [
      Airport.create!(
        :name => "Name",
        :city => nil,
        :department => 1
      ),
      Airport.create!(
        :name => "Name",
        :city => nil,
        :department => 1
      )
    ])
  end

  it "renders a list of airports" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
