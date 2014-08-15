require "spec_helper"

describe GdsController do
  describe "routing" do

    it "routes to #index" do
      get("/gds").should route_to("gds#index")
    end

    it "routes to #new" do
      get("/gds/new").should route_to("gds#new")
    end

    it "routes to #show" do
      get("/gds/1").should route_to("gds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/gds/1/edit").should route_to("gds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/gds").should route_to("gds#create")
    end

    it "routes to #update" do
      put("/gds/1").should route_to("gds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/gds/1").should route_to("gds#destroy", :id => "1")
    end

  end
end
