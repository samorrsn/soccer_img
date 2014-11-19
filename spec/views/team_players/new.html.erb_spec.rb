require 'spec_helper'

describe "team_players/new" do
  before(:each) do
    assign(:team_player, stub_model(TeamPlayer).as_new_record)
  end

  it "renders new team_player form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", team_players_path, "post" do
    end
  end
end
