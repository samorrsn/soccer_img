require 'spec_helper'

describe "team_positions/show" do
  before(:each) do
    @team_position = assign(:team_position, stub_model(TeamPosition))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
