require 'rails_helper'

RSpec.describe "historia_fisicas/new", type: :view do
  before(:each) do
    assign(:historia_fisica, HistoriaFisica.new(
      :user_id => 1,
      :paciente_id => 1,
      :descripcion => "MyText",
      :tipo => "MyString",
      :adjunto => "MyString"
    ))
  end

  it "renders new historia_fisica form" do
    render

    assert_select "form[action=?][method=?]", historia_fisicas_path, "post" do

      assert_select "input#historia_fisica_user_id[name=?]", "historia_fisica[user_id]"

      assert_select "input#historia_fisica_paciente_id[name=?]", "historia_fisica[paciente_id]"

      assert_select "textarea#historia_fisica_descripcion[name=?]", "historia_fisica[descripcion]"

      assert_select "input#historia_fisica_tipo[name=?]", "historia_fisica[tipo]"

      assert_select "input#historia_fisica_adjunto[name=?]", "historia_fisica[adjunto]"
    end
  end
end
