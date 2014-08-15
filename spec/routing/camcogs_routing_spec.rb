require "spec_helper"

describe CamcogsController do
  describe "routing" do

    it "routes to #index" do
      get("/camcogs").should route_to("camcogs#index")
    end

    it "routes to #new" do
      get("/camcogs/new").should route_to("camcogs#new")
    end

    it "routes to #show" do
      get("/camcogs/1").should route_to("camcogs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/camcogs/1/edit").should route_to("camcogs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/camcogs").should route_to("camcogs#create")
    end

    it "routes to #update" do
      put("/camcogs/1").should route_to("camcogs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/camcogs/1").should route_to("camcogs#destroy", :id => "1")
    end

  end
end
