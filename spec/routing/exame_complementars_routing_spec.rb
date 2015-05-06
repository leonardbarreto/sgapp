require "spec_helper"

describe ExameComplementarsController do
  describe "routing" do

    it "routes to #index" do
      get("/exame_complementars").should route_to("exame_complementars#index")
    end

    it "routes to #new" do
      get("/exame_complementars/new").should route_to("exame_complementars#new")
    end

    it "routes to #show" do
      get("/exame_complementars/1").should route_to("exame_complementars#show", :id => "1")
    end

    it "routes to #edit" do
      get("/exame_complementars/1/edit").should route_to("exame_complementars#edit", :id => "1")
    end

    it "routes to #create" do
      post("/exame_complementars").should route_to("exame_complementars#create")
    end

    it "routes to #update" do
      put("/exame_complementars/1").should route_to("exame_complementars#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/exame_complementars/1").should route_to("exame_complementars#destroy", :id => "1")
    end

  end
end
