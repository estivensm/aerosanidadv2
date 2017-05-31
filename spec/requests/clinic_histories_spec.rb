require 'rails_helper'

RSpec.describe "ClinicHistories", type: :request do
  describe "GET /clinic_histories" do
    it "works! (now write some real specs)" do
      get clinic_histories_path
      expect(response).to have_http_status(200)
    end
  end
end
