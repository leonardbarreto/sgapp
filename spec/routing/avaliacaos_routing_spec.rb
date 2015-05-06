require "spec_helper"

describe AvaliacaosController do
  describe "routing" do

    it "routes to #index" do
      get("/avaliacaos").should route_to("avaliacaos#index")
    end

    it "routes to #new" do
      get("/avaliacaos/new").should route_to("avaliacaos#new")
    end

    it "routes to #show" do
      get("/avaliacaos/1").should route_to("avaliacaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/avaliacaos/1/edit").should route_to("avaliacaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/avaliacaos").should route_to("avaliacaos#create")
    end

    it "routes to #update" do
      put("/avaliacaos/1").should route_to("avaliacaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/avaliacaos/1").should route_to("avaliacaos#destroy", :id => "1")
    end

  end
end
