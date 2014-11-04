require 'spec_helper'

describe "team_members/index" do
  before(:each) do
    assign(:team_members, [
      stub_model(TeamMember),
      stub_model(TeamMember)
    ])
  end

  it "renders a list of team_members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
