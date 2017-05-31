require "rails_helper"

RSpec.describe PaisesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/paises").to route_to("paises#index")
    end

    it "routes to #new" do
      expect(:get => "/paises/new").to route_to("paises#new")
    end

    it "routes to #show" do
      expect(:get => "/paises/1").to route_to("paises#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/paises/1/edit").to route_to("paises#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/paises").to route_to("paises#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/paises/1").to route_to("paises#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/paises/1").to route_to("paises#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/paises/1").to route_to("paises#destroy", :id => "1")
    end

  end
end
