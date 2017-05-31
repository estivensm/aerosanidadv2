require 'rails_helper'

RSpec.describe "roles/index", type: :view do
  before(:each) do
    assign(:roles, [
      Rol.create!(
        :name => "Name",
        :restrictions => "Restrictions"
      ),
      Rol.create!(
        :name => "Name",
        :restrictions => "Restrictions"
      )
    ])
  end

  it "renders a list of roles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Restrictions".to_s, :count => 2
  end
end
