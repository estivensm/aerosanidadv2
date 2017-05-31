require 'rails_helper'

RSpec.describe Dashboard1Controller, type: :controller do

  describe "GET #graficas" do
    it "returns http success" do
      get :graficas
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #mapa" do
    it "returns http success" do
      get :mapa
      expect(response).to have_http_status(:success)
    end
  end

end
