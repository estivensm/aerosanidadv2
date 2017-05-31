require "rails_helper"

RSpec.describe DiagnosticosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/diagnosticos").to route_to("diagnosticos#index")
    end

    it "routes to #new" do
      expect(:get => "/diagnosticos/new").to route_to("diagnosticos#new")
    end

    it "routes to #show" do
      expect(:get => "/diagnosticos/1").to route_to("diagnosticos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/diagnosticos/1/edit").to route_to("diagnosticos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/diagnosticos").to route_to("diagnosticos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/diagnosticos/1").to route_to("diagnosticos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/diagnosticos/1").to route_to("diagnosticos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/diagnosticos/1").to route_to("diagnosticos#destroy", :id => "1")
    end

  end
end
