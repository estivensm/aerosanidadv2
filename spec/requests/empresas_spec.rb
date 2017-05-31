require 'rails_helper'

RSpec.describe "Empresas", type: :request do
  describe "GET /empresas" do
    it "works! (now write some real specs)" do
      get empresas_path
      expect(response).to have_http_status(200)
    end
  end
end
