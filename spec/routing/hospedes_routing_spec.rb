require "spec_helper"

describe HospedesController do
  describe "routing" do

    it "routes to #index" do
      get("/hospedes").should route_to("hospedes#index")
    end

    it "routes to #new" do
      get("/hospedes/new").should route_to("hospedes#new")
    end

    it "routes to #show" do
      get("/hospedes/1").should route_to("hospedes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hospedes/1/edit").should route_to("hospedes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hospedes").should route_to("hospedes#create")
    end

    it "routes to #update" do
      put("/hospedes/1").should route_to("hospedes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hospedes/1").should route_to("hospedes#destroy", :id => "1")
    end

  end
end
