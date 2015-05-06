require "spec_helper"

describe TomografiaController do
  describe "routing" do

    it "routes to #index" do
      get("/tomografia").should route_to("tomografia#index")
    end

    it "routes to #new" do
      get("/tomografia/new").should route_to("tomografia#new")
    end

    it "routes to #show" do
      get("/tomografia/1").should route_to("tomografia#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tomografia/1/edit").should route_to("tomografia#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tomografia").should route_to("tomografia#create")
    end

    it "routes to #update" do
      put("/tomografia/1").should route_to("tomografia#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tomografia/1").should route_to("tomografia#destroy", :id => "1")
    end

  end
end
