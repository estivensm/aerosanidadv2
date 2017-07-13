require "rails_helper"

RSpec.describe HistoriaFisicasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/historia_fisicas").to route_to("historia_fisicas#index")
    end

    it "routes to #new" do
      expect(:get => "/historia_fisicas/new").to route_to("historia_fisicas#new")
    end

    it "routes to #show" do
      expect(:get => "/historia_fisicas/1").to route_to("historia_fisicas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/historia_fisicas/1/edit").to route_to("historia_fisicas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/historia_fisicas").to route_to("historia_fisicas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/historia_fisicas/1").to route_to("historia_fisicas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/historia_fisicas/1").to route_to("historia_fisicas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/historia_fisicas/1").to route_to("historia_fisicas#destroy", :id => "1")
    end

  end
end
