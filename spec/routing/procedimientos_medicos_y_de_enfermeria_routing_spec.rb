require "rails_helper"

RSpec.describe ProcedimientosMedicosYDeEnfermeriaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/procedimientos_medicos_y_de_enfermeria").to route_to("procedimientos_medicos_y_de_enfermeria#index")
    end

    it "routes to #new" do
      expect(:get => "/procedimientos_medicos_y_de_enfermeria/new").to route_to("procedimientos_medicos_y_de_enfermeria#new")
    end

    it "routes to #show" do
      expect(:get => "/procedimientos_medicos_y_de_enfermeria/1").to route_to("procedimientos_medicos_y_de_enfermeria#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/procedimientos_medicos_y_de_enfermeria/1/edit").to route_to("procedimientos_medicos_y_de_enfermeria#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/procedimientos_medicos_y_de_enfermeria").to route_to("procedimientos_medicos_y_de_enfermeria#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/procedimientos_medicos_y_de_enfermeria/1").to route_to("procedimientos_medicos_y_de_enfermeria#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/procedimientos_medicos_y_de_enfermeria/1").to route_to("procedimientos_medicos_y_de_enfermeria#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/procedimientos_medicos_y_de_enfermeria/1").to route_to("procedimientos_medicos_y_de_enfermeria#destroy", :id => "1")
    end

  end
end
