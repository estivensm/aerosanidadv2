require 'rails_helper'

RSpec.describe "arles/new", type: :view do
  before(:each) do
    assign(:arl, Arl.new(
      :name => "MyString"
    ))
  end

  it "renders new arl form" do
    render

    assert_select "form[action=?][method=?]", arles_path, "post" do

      assert_select "input#arl_name[name=?]", "arl[name]"
    end
  end
end
