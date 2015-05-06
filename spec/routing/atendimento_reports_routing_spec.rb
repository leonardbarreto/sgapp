require "spec_helper"

describe AtendimentoReportsController do
  describe "routing" do

    it "routes to #index" do
      get("/atendimento_reports").should route_to("atendimento_reports#index")
    end

    it "routes to #new" do
      get("/atendimento_reports/new").should route_to("atendimento_reports#new")
    end

    it "routes to #show" do
      get("/atendimento_reports/1").should route_to("atendimento_reports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/atendimento_reports/1/edit").should route_to("atendimento_reports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/atendimento_reports").should route_to("atendimento_reports#create")
    end

    it "routes to #update" do
      put("/atendimento_reports/1").should route_to("atendimento_reports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/atendimento_reports/1").should route_to("atendimento_reports#destroy", :id => "1")
    end

  end
end
