require "spec_helper"

describe DoencasController do
  describe "routing" do

    it "routes to #index" do
      get("/doencas").should route_to("doencas#index")
    end

    it "routes to #new" do
      get("/doencas/new").should route_to("doencas#new")
    end

    it "routes to #show" do
      get("/doencas/1").should route_to("doencas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/doencas/1/edit").should route_to("doencas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/doencas").should route_to("doencas#create")
    end

    it "routes to #update" do
      put("/doencas/1").should route_to("doencas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/doencas/1").should route_to("doencas#destroy", :id => "1")
    end

  end
end
