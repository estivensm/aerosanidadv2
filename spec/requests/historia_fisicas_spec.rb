require 'rails_helper'

RSpec.describe "HistoriaFisicas", type: :request do
  describe "GET /historia_fisicas" do
    it "works! (now write some real specs)" do
      get historia_fisicas_path
      expect(response).to have_http_status(200)
    end
  end
end
