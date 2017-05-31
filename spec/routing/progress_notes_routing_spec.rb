require "rails_helper"

RSpec.describe ProgressNotesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/progress_notes").to route_to("progress_notes#index")
    end

    it "routes to #new" do
      expect(:get => "/progress_notes/new").to route_to("progress_notes#new")
    end

    it "routes to #show" do
      expect(:get => "/progress_notes/1").to route_to("progress_notes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/progress_notes/1/edit").to route_to("progress_notes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/progress_notes").to route_to("progress_notes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/progress_notes/1").to route_to("progress_notes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/progress_notes/1").to route_to("progress_notes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/progress_notes/1").to route_to("progress_notes#destroy", :id => "1")
    end

  end
end
