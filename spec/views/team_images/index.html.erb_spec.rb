require 'spec_helper'

describe "team_images/index" do
  before(:each) do
    assign(:team_images, [
      stub_model(TeamImage),
      stub_model(TeamImage)
    ])
  end

  it "renders a list of team_images" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
