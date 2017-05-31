require 'rails_helper'

RSpec.describe "arles/index", type: :view do
  before(:each) do
    assign(:arles, [
      Arl.create!(
        :name => "Name"
      ),
      Arl.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of arles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
