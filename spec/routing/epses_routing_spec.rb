require "rails_helper"

RSpec.describe EpsesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/epses").to route_to("epses#index")
    end

    it "routes to #new" do
      expect(:get => "/epses/new").to route_to("epses#new")
    end

    it "routes to #show" do
      expect(:get => "/epses/1").to route_to("epses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/epses/1/edit").to route_to("epses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/epses").to route_to("epses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/epses/1").to route_to("epses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/epses/1").to route_to("epses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/epses/1").to route_to("epses#destroy", :id => "1")
    end

  end
end
