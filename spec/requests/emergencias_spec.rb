require 'rails_helper'

RSpec.describe "Emergencias", type: :request do
  describe "GET /emergencias" do
    it "works! (now write some real specs)" do
      get emergencias_path
      expect(response).to have_http_status(200)
    end
  end
end
