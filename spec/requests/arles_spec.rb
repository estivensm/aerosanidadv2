require 'rails_helper'

RSpec.describe "Arles", type: :request do
  describe "GET /arles" do
    it "works! (now write some real specs)" do
      get arles_path
      expect(response).to have_http_status(200)
    end
  end
end
