require "spec_helper"

describe AposentosController do
  describe "routing" do

    it "routes to #index" do
      get("/aposentos").should route_to("aposentos#index")
    end

    it "routes to #new" do
      get("/aposentos/new").should route_to("aposentos#new")
    end

    it "routes to #show" do
      get("/aposentos/1").should route_to("aposentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aposentos/1/edit").should route_to("aposentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aposentos").should route_to("aposentos#create")
    end

    it "routes to #update" do
      put("/aposentos/1").should route_to("aposentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aposentos/1").should route_to("aposentos#destroy", :id => "1")
    end

  end
end
