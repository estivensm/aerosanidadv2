require 'rails_helper'

RSpec.describe "emergencias/edit", type: :view do
  before(:each) do
    @emergencia = assign(:emergencia, Emergencia.create!(
      :user => nil,
      :aeropuerto => nil,
      :emergencias => "MyString",
      :notas_de_la_emergencia => "MyText"
    ))
  end

  it "renders the edit emergencia form" do
    render

    assert_select "form[action=?][method=?]", emergencia_path(@emergencia), "post" do

      assert_select "input#emergencia_user_id[name=?]", "emergencia[user_id]"

      assert_select "input#emergencia_aeropuerto_id[name=?]", "emergencia[aeropuerto_id]"

      assert_select "input#emergencia_emergencias[name=?]", "emergencia[emergencias]"

      assert_select "textarea#emergencia_notas_de_la_emergencia[name=?]", "emergencia[notas_de_la_emergencia]"
    end
  end
end
