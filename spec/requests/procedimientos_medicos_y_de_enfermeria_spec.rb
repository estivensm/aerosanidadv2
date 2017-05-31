require 'rails_helper'

RSpec.describe "ProcedimientoMedicoYDeEnfermeria", type: :request do
  describe "GET /procedimientos_medicos_y_de_enfermeria" do
    it "works! (now write some real specs)" do
      get procedimientos_medicos_y_de_enfermeria_path
      expect(response).to have_http_status(200)
    end
  end
end
