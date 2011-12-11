require "spec_helper"

describe MedhistoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/medhistories").should route_to("medhistories#index")
    end

    it "routes to #new" do
      get("/medhistories/new").should route_to("medhistories#new")
    end

    it "routes to #show" do
      get("/medhistories/1").should route_to("medhistories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/medhistories/1/edit").should route_to("medhistories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/medhistories").should route_to("medhistories#create")
    end

    it "routes to #update" do
      put("/medhistories/1").should route_to("medhistories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/medhistories/1").should route_to("medhistories#destroy", :id => "1")
    end

  end
end
