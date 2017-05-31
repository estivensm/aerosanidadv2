require "rails_helper"

RSpec.describe ArlesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/arles").to route_to("arles#index")
    end

    it "routes to #new" do
      expect(:get => "/arles/new").to route_to("arles#new")
    end

    it "routes to #show" do
      expect(:get => "/arles/1").to route_to("arles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/arles/1/edit").to route_to("arles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/arles").to route_to("arles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/arles/1").to route_to("arles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/arles/1").to route_to("arles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/arles/1").to route_to("arles#destroy", :id => "1")
    end

  end
end
