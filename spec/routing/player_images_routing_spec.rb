require "spec_helper"

describe PlayerImagesController do
  describe "routing" do

    it "routes to #index" do
      get("/player_images").should route_to("player_images#index")
    end

    it "routes to #new" do
      get("/player_images/new").should route_to("player_images#new")
    end

    it "routes to #show" do
      get("/player_images/1").should route_to("player_images#show", :id => "1")
    end

    it "routes to #edit" do
      get("/player_images/1/edit").should route_to("player_images#edit", :id => "1")
    end

    it "routes to #create" do
      post("/player_images").should route_to("player_images#create")
    end

    it "routes to #update" do
      put("/player_images/1").should route_to("player_images#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/player_images/1").should route_to("player_images#destroy", :id => "1")
    end

  end
end
