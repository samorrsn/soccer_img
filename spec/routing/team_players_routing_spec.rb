require "spec_helper"

describe TeamPlayersController do
  describe "routing" do

    it "routes to #index" do
      get("/team_players").should route_to("team_players#index")
    end

    it "routes to #new" do
      get("/team_players/new").should route_to("team_players#new")
    end

    it "routes to #show" do
      get("/team_players/1").should route_to("team_players#show", :id => "1")
    end

    it "routes to #edit" do
      get("/team_players/1/edit").should route_to("team_players#edit", :id => "1")
    end

    it "routes to #create" do
      post("/team_players").should route_to("team_players#create")
    end

    it "routes to #update" do
      put("/team_players/1").should route_to("team_players#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/team_players/1").should route_to("team_players#destroy", :id => "1")
    end

  end
end
