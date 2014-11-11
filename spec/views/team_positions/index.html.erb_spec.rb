require 'spec_helper'

describe "team_positions/index" do
  before(:each) do
    assign(:team_positions, [
      stub_model(TeamPosition),
      stub_model(TeamPosition)
    ])
  end

  it "renders a list of team_positions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
