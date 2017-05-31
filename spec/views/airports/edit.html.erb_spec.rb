require 'rails_helper'

RSpec.describe "airports/edit", type: :view do
  before(:each) do
    @airport = assign(:airport, Airport.create!(
      :name => "MyString",
      :city => nil,
      :department => 1
    ))
  end

  it "renders the edit airport form" do
    render

    assert_select "form[action=?][method=?]", airport_path(@airport), "post" do

      assert_select "input#airport_name[name=?]", "airport[name]"

      assert_select "input#airport_city_id[name=?]", "airport[city_id]"

      assert_select "input#airport_department[name=?]", "airport[department]"
    end
  end
end
