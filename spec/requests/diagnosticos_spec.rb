require 'rails_helper'

RSpec.describe "Diagnosticos", type: :request do
  describe "GET /diagnosticos" do
    it "works! (now write some real specs)" do
      get diagnosticos_path
      expect(response).to have_http_status(200)
    end
  end
end
