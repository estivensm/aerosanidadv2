require 'rails_helper'

RSpec.describe "diagnosticos/index", type: :view do
  before(:each) do
    assign(:diagnosticos, [
      Diagnostico.create!(
        :familia => "Familia",
        :codigo => "Codigo",
        :simbolo => "Simbolo",
        :descripcion => "MyText",
        :codigo => "Codigo",
        :historia_clinica => nil
      ),
      Diagnostico.create!(
        :familia => "Familia",
        :codigo => "Codigo",
        :simbolo => "Simbolo",
        :descripcion => "MyText",
        :codigo => "Codigo",
        :historia_clinica => nil
      )
    ])
  end

  it "renders a list of diagnosticos" do
    render
    assert_select "tr>td", :text => "Familia".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => "Simbolo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
