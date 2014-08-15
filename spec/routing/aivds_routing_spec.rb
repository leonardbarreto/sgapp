require "spec_helper"

describe AivdsController do
  describe "routing" do

    it "routes to #index" do
      get("/aivds").should route_to("aivds#index")
    end

    it "routes to #new" do
      get("/aivds/new").should route_to("aivds#new")
    end

    it "routes to #show" do
      get("/aivds/1").should route_to("aivds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aivds/1/edit").should route_to("aivds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aivds").should route_to("aivds#create")
    end

    it "routes to #update" do
      put("/aivds/1").should route_to("aivds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aivds/1").should route_to("aivds#destroy", :id => "1")
    end

  end
end
