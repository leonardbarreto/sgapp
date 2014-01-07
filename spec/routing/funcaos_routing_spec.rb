require "spec_helper"

describe FuncaosController do
  describe "routing" do

    it "routes to #index" do
      get("/funcaos").should route_to("funcaos#index")
    end

    it "routes to #new" do
      get("/funcaos/new").should route_to("funcaos#new")
    end

    it "routes to #show" do
      get("/funcaos/1").should route_to("funcaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/funcaos/1/edit").should route_to("funcaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/funcaos").should route_to("funcaos#create")
    end

    it "routes to #update" do
      put("/funcaos/1").should route_to("funcaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/funcaos/1").should route_to("funcaos#destroy", :id => "1")
    end

  end
end
