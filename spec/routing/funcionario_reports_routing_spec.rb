require "spec_helper"

describe FuncionarioReportsController do
  describe "routing" do

    it "routes to #index" do
      get("/funcionario_reports").should route_to("funcionario_reports#index")
    end

    it "routes to #new" do
      get("/funcionario_reports/new").should route_to("funcionario_reports#new")
    end

    it "routes to #show" do
      get("/funcionario_reports/1").should route_to("funcionario_reports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/funcionario_reports/1/edit").should route_to("funcionario_reports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/funcionario_reports").should route_to("funcionario_reports#create")
    end

    it "routes to #update" do
      put("/funcionario_reports/1").should route_to("funcionario_reports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/funcionario_reports/1").should route_to("funcionario_reports#destroy", :id => "1")
    end

  end
end
