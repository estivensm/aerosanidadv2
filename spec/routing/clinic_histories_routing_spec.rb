require "rails_helper"

RSpec.describe ClinicHistoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/clinic_histories").to route_to("clinic_histories#index")
    end

    it "routes to #new" do
      expect(:get => "/clinic_histories/new").to route_to("clinic_histories#new")
    end

    it "routes to #show" do
      expect(:get => "/clinic_histories/1").to route_to("clinic_histories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/clinic_histories/1/edit").to route_to("clinic_histories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/clinic_histories").to route_to("clinic_histories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/clinic_histories/1").to route_to("clinic_histories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/clinic_histories/1").to route_to("clinic_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clinic_histories/1").to route_to("clinic_histories#destroy", :id => "1")
    end

  end
end
