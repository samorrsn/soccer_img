require 'spec_helper'

describe "team_members/show" do
  before(:each) do
    @team_member = assign(:team_member, stub_model(TeamMember))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
