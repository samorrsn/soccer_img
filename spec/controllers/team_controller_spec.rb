require 'spec_helper'

describe TeamController do

  describe "GET 'profile'" do
    it "returns http success" do
      get 'profile'
      response.should be_success
    end
  end

  describe "GET 'schedule'" do
    it "returns http success" do
      get 'schedule'
      response.should be_success
    end
  end

  describe "GET 'players'" do
    it "returns http success" do
      get 'players'
      response.should be_success
    end
  end

  describe "GET 'positions'" do
    it "returns http success" do
      get 'positions'
      response.should be_success
    end
  end

end
