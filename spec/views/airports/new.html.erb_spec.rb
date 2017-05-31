require 'rails_helper'

RSpec.describe "airports/new", type: :view do
  before(:each) do
    assign(:airport, Airport.new(
      :name => "MyString",
      :city => nil,
      :department => 1
    ))
  end

  it "renders new airport form" do
    render

    assert_select "form[action=?][method=?]", airports_path, "post" do

      assert_select "input#airport_name[name=?]", "airport[name]"

      assert_select "input#airport_city_id[name=?]", "airport[city_id]"

      assert_select "input#airport_department[name=?]", "airport[department]"
    end
  end
end
