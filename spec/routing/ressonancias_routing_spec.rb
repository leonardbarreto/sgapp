require "spec_helper"

describe RessonanciasController do
  describe "routing" do

    it "routes to #index" do
      get("/ressonancias").should route_to("ressonancias#index")
    end

    it "routes to #new" do
      get("/ressonancias/new").should route_to("ressonancias#new")
    end

    it "routes to #show" do
      get("/ressonancias/1").should route_to("ressonancias#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ressonancias/1/edit").should route_to("ressonancias#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ressonancias").should route_to("ressonancias#create")
    end

    it "routes to #update" do
      put("/ressonancias/1").should route_to("ressonancias#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ressonancias/1").should route_to("ressonancias#destroy", :id => "1")
    end

  end
end
