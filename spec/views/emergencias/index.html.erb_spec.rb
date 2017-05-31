require 'rails_helper'

RSpec.describe "emergencias/index", type: :view do
  before(:each) do
    assign(:emergencias, [
      Emergencia.create!(
        :user => nil,
        :aeropuerto => nil,
        :emergencias => "Emergencias",
        :notas_de_la_emergencia => "MyText"
      ),
      Emergencia.create!(
        :user => nil,
        :aeropuerto => nil,
        :emergencias => "Emergencias",
        :notas_de_la_emergencia => "MyText"
      )
    ])
  end

  it "renders a list of emergencias" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Emergencias".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
