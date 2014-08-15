require "spec_helper"

describe AvdsController do
  describe "routing" do

    it "routes to #index" do
      get("/avds").should route_to("avds#index")
    end

    it "routes to #new" do
      get("/avds/new").should route_to("avds#new")
    end

    it "routes to #show" do
      get("/avds/1").should route_to("avds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/avds/1/edit").should route_to("avds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/avds").should route_to("avds#create")
    end

    it "routes to #update" do
      put("/avds/1").should route_to("avds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/avds/1").should route_to("avds#destroy", :id => "1")
    end

  end
end
