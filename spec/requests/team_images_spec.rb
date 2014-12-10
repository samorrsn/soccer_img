require 'spec_helper'

describe "TeamImages" do
  describe "GET /team_images" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get team_images_path
      response.status.should be(200)
    end
  end
end
