require "spec_helper"

describe CdrsController do
  describe "routing" do

    it "routes to #index" do
      get("/cdrs").should route_to("cdrs#index")
    end

    it "routes to #new" do
      get("/cdrs/new").should route_to("cdrs#new")
    end

    it "routes to #show" do
      get("/cdrs/1").should route_to("cdrs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cdrs/1/edit").should route_to("cdrs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cdrs").should route_to("cdrs#create")
    end

    it "routes to #update" do
      put("/cdrs/1").should route_to("cdrs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cdrs/1").should route_to("cdrs#destroy", :id => "1")
    end

  end
end
