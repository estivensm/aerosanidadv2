require 'rails_helper'

RSpec.describe "epses/index", type: :view do
  before(:each) do
    assign(:epses, [
      Eps.create!(
        :name => "Name"
      ),
      Eps.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of epses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
