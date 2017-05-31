require "rails_helper"

RSpec.describe Cie10sController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cie10s").to route_to("cie10s#index")
    end

    it "routes to #new" do
      expect(:get => "/cie10s/new").to route_to("cie10s#new")
    end

    it "routes to #show" do
      expect(:get => "/cie10s/1").to route_to("cie10s#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cie10s/1/edit").to route_to("cie10s#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cie10s").to route_to("cie10s#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cie10s/1").to route_to("cie10s#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cie10s/1").to route_to("cie10s#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cie10s/1").to route_to("cie10s#destroy", :id => "1")
    end

  end
end
