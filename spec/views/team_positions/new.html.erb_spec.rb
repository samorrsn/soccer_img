require 'spec_helper'

describe "team_positions/new" do
  before(:each) do
    assign(:team_position, stub_model(TeamPosition).as_new_record)
  end

  it "renders new team_position form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", team_positions_path, "post" do
    end
  end
end
