require "spec_helper"

describe HospedagensController do
  describe "routing" do

    it "routes to #index" do
      get("/hospedagens").should route_to("hospedagens#index")
    end

    it "routes to #new" do
      get("/hospedagens/new").should route_to("hospedagens#new")
    end

    it "routes to #show" do
      get("/hospedagens/1").should route_to("hospedagens#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hospedagens/1/edit").should route_to("hospedagens#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hospedagens").should route_to("hospedagens#create")
    end

    it "routes to #update" do
      put("/hospedagens/1").should route_to("hospedagens#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hospedagens/1").should route_to("hospedagens#destroy", :id => "1")
    end

  end
end
