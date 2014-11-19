require 'spec_helper'

describe "team_players/show" do
  before(:each) do
    @team_player = assign(:team_player, stub_model(TeamPlayer))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
