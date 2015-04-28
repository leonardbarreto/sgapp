require "spec_helper"

describe RelogiosController do
  describe "routing" do

    it "routes to #index" do
      get("/relogios").should route_to("relogios#index")
    end

    it "routes to #new" do
      get("/relogios/new").should route_to("relogios#new")
    end

    it "routes to #show" do
      get("/relogios/1").should route_to("relogios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/relogios/1/edit").should route_to("relogios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/relogios").should route_to("relogios#create")
    end

    it "routes to #update" do
      put("/relogios/1").should route_to("relogios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/relogios/1").should route_to("relogios#destroy", :id => "1")
    end

  end
end
