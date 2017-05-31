require 'rails_helper'

RSpec.describe "epses/new", type: :view do
  before(:each) do
    assign(:eps, Eps.new(
      :name => "MyString"
    ))
  end

  it "renders new eps form" do
    render

    assert_select "form[action=?][method=?]", epses_path, "post" do

      assert_select "input#eps_name[name=?]", "eps[name]"
    end
  end
end
