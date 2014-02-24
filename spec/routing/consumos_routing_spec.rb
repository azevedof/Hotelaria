require "spec_helper"

describe ConsumosController do
  describe "routing" do

    it "routes to #index" do
      get("/consumos").should route_to("consumos#index")
    end

    it "routes to #new" do
      get("/consumos/new").should route_to("consumos#new")
    end

    it "routes to #show" do
      get("/consumos/1").should route_to("consumos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/consumos/1/edit").should route_to("consumos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/consumos").should route_to("consumos#create")
    end

    it "routes to #update" do
      put("/consumos/1").should route_to("consumos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/consumos/1").should route_to("consumos#destroy", :id => "1")
    end

  end
end
