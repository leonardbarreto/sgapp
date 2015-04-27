require "spec_helper"

describe AgendaProfissionalsController do
  describe "routing" do

    it "routes to #index" do
      get("/agenda_profissionals").should route_to("agenda_profissionals#index")
    end

    it "routes to #new" do
      get("/agenda_profissionals/new").should route_to("agenda_profissionals#new")
    end

    it "routes to #show" do
      get("/agenda_profissionals/1").should route_to("agenda_profissionals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/agenda_profissionals/1/edit").should route_to("agenda_profissionals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/agenda_profissionals").should route_to("agenda_profissionals#create")
    end

    it "routes to #update" do
      put("/agenda_profissionals/1").should route_to("agenda_profissionals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/agenda_profissionals/1").should route_to("agenda_profissionals#destroy", :id => "1")
    end

  end
end
