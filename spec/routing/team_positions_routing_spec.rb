require "spec_helper"

describe TeamPositionsController do
  describe "routing" do

    it "routes to #index" do
      get("/team_positions").should route_to("team_positions#index")
    end

    it "routes to #new" do
      get("/team_positions/new").should route_to("team_positions#new")
    end

    it "routes to #show" do
      get("/team_positions/1").should route_to("team_positions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/team_positions/1/edit").should route_to("team_positions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/team_positions").should route_to("team_positions#create")
    end

    it "routes to #update" do
      put("/team_positions/1").should route_to("team_positions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/team_positions/1").should route_to("team_positions#destroy", :id => "1")
    end

  end
end
