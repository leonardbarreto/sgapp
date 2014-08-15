require "spec_helper"

describe FluenciaVerbalsController do
  describe "routing" do

    it "routes to #index" do
      get("/fluencia_verbals").should route_to("fluencia_verbals#index")
    end

    it "routes to #new" do
      get("/fluencia_verbals/new").should route_to("fluencia_verbals#new")
    end

    it "routes to #show" do
      get("/fluencia_verbals/1").should route_to("fluencia_verbals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fluencia_verbals/1/edit").should route_to("fluencia_verbals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fluencia_verbals").should route_to("fluencia_verbals#create")
    end

    it "routes to #update" do
      put("/fluencia_verbals/1").should route_to("fluencia_verbals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fluencia_verbals/1").should route_to("fluencia_verbals#destroy", :id => "1")
    end

  end
end
