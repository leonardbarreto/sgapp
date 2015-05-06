require "spec_helper"

describe RessonanciaController do
  describe "routing" do

    it "routes to #index" do
      get("/ressonancia").should route_to("ressonancia#index")
    end

    it "routes to #new" do
      get("/ressonancia/new").should route_to("ressonancia#new")
    end

    it "routes to #show" do
      get("/ressonancia/1").should route_to("ressonancia#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ressonancia/1/edit").should route_to("ressonancia#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ressonancia").should route_to("ressonancia#create")
    end

    it "routes to #update" do
      put("/ressonancia/1").should route_to("ressonancia#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ressonancia/1").should route_to("ressonancia#destroy", :id => "1")
    end

  end
end
