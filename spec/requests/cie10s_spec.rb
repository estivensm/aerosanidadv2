require 'rails_helper'

RSpec.describe "Cie10s", type: :request do
  describe "GET /cie10s" do
    it "works! (now write some real specs)" do
      get cie10s_path
      expect(response).to have_http_status(200)
    end
  end
end
