require 'spec_helper'

describe "team_images/show" do
  before(:each) do
    @team_image = assign(:team_image, stub_model(TeamImage))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
