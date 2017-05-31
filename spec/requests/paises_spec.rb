require 'rails_helper'

RSpec.describe "Paises", type: :request do
  describe "GET /paises" do
    it "works! (now write some real specs)" do
      get paises_path
      expect(response).to have_http_status(200)
    end
  end
end
