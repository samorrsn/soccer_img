require 'spec_helper'

describe "team_positions/edit" do
  before(:each) do
    @team_position = assign(:team_position, stub_model(TeamPosition))
  end

  it "renders the edit team_position form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", team_position_path(@team_position), "post" do
    end
  end
end
