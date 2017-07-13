require 'rails_helper'

RSpec.describe "historia_fisicas/index", type: :view do
  before(:each) do
    assign(:historia_fisicas, [
      HistoriaFisica.create!(
        :user_id => 1,
        :paciente_id => 2,
        :descripcion => "MyText",
        :tipo => "Tipo",
        :adjunto => "Adjunto"
      ),
      HistoriaFisica.create!(
        :user_id => 1,
        :paciente_id => 2,
        :descripcion => "MyText",
        :tipo => "Tipo",
        :adjunto => "Adjunto"
      )
    ])
  end

  it "renders a list of historia_fisicas" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Adjunto".to_s, :count => 2
  end
end
