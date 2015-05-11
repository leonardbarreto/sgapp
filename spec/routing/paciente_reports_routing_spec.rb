require "spec_helper"

describe PacienteReportsController do
  describe "routing" do

    it "routes to #index" do
      get("/paciente_reports").should route_to("paciente_reports#index")
    end

    it "routes to #new" do
      get("/paciente_reports/new").should route_to("paciente_reports#new")
    end

    it "routes to #show" do
      get("/paciente_reports/1").should route_to("paciente_reports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/paciente_reports/1/edit").should route_to("paciente_reports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/paciente_reports").should route_to("paciente_reports#create")
    end

    it "routes to #update" do
      put("/paciente_reports/1").should route_to("paciente_reports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/paciente_reports/1").should route_to("paciente_reports#destroy", :id => "1")
    end

  end
end
