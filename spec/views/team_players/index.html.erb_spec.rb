require 'spec_helper'

describe "team_players/index" do
  before(:each) do
    assign(:team_players, [
      stub_model(TeamPlayer),
      stub_model(TeamPlayer)
    ])
  end

  it "renders a list of team_players" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
