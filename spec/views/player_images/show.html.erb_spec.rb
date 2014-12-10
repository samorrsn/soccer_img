require 'spec_helper'

describe "player_images/show" do
  before(:each) do
    @player_image = assign(:player_image, stub_model(PlayerImage))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
