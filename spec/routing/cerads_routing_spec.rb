require "spec_helper"

describe CeradsController do
  describe "routing" do

    it "routes to #index" do
      get("/cerads").should route_to("cerads#index")
    end

    it "routes to #new" do
      get("/cerads/new").should route_to("cerads#new")
    end

    it "routes to #show" do
      get("/cerads/1").should route_to("cerads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cerads/1/edit").should route_to("cerads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cerads").should route_to("cerads#create")
    end

    it "routes to #update" do
      put("/cerads/1").should route_to("cerads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cerads/1").should route_to("cerads#destroy", :id => "1")
    end

  end
end
