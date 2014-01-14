require "spec_helper"

describe TipoAtendimentosController do
  describe "routing" do

    it "routes to #index" do
      get("/tipo_atendimentos").should route_to("tipo_atendimentos#index")
    end

    it "routes to #new" do
      get("/tipo_atendimentos/new").should route_to("tipo_atendimentos#new")
    end

    it "routes to #show" do
      get("/tipo_atendimentos/1").should route_to("tipo_atendimentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipo_atendimentos/1/edit").should route_to("tipo_atendimentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipo_atendimentos").should route_to("tipo_atendimentos#create")
    end

    it "routes to #update" do
      put("/tipo_atendimentos/1").should route_to("tipo_atendimentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipo_atendimentos/1").should route_to("tipo_atendimentos#destroy", :id => "1")
    end

  end
end
