require "spec_helper"

describe TeamImagesController do
  describe "routing" do

    it "routes to #index" do
      get("/team_images").should route_to("team_images#index")
    end

    it "routes to #new" do
      get("/team_images/new").should route_to("team_images#new")
    end

    it "routes to #show" do
      get("/team_images/1").should route_to("team_images#show", :id => "1")
    end

    it "routes to #edit" do
      get("/team_images/1/edit").should route_to("team_images#edit", :id => "1")
    end

    it "routes to #create" do
      post("/team_images").should route_to("team_images#create")
    end

    it "routes to #update" do
      put("/team_images/1").should route_to("team_images#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/team_images/1").should route_to("team_images#destroy", :id => "1")
    end

  end
end
