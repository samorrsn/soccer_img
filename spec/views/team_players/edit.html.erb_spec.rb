require 'spec_helper'

describe "team_players/edit" do
  before(:each) do
    @team_player = assign(:team_player, stub_model(TeamPlayer))
  end

  it "renders the edit team_player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", team_player_path(@team_player), "post" do
    end
  end
end
