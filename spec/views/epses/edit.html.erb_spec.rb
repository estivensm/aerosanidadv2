require 'rails_helper'

RSpec.describe "epses/edit", type: :view do
  before(:each) do
    @eps = assign(:eps, Eps.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit eps form" do
    render

    assert_select "form[action=?][method=?]", eps_path(@eps), "post" do

      assert_select "input#eps_name[name=?]", "eps[name]"
    end
  end
end
