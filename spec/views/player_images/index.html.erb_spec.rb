require 'spec_helper'

describe "player_images/index" do
  before(:each) do
    assign(:player_images, [
      stub_model(PlayerImage),
      stub_model(PlayerImage)
    ])
  end

  it "renders a list of player_images" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
