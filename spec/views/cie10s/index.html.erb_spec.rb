require 'rails_helper'

RSpec.describe "cie10s/index", type: :view do
  before(:each) do
    assign(:cie10s, [
      Cie10.create!(
        :familia => "Familia",
        :codigo => "Codigo",
        :descripcion => "MyText"
      ),
      Cie10.create!(
        :familia => "Familia",
        :codigo => "Codigo",
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of cie10s" do
    render
    assert_select "tr>td", :text => "Familia".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
