require 'spec_helper'

describe "team_members/new" do
  before(:each) do
    assign(:team_member, stub_model(TeamMember).as_new_record)
  end

  it "renders new team_member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", team_members_path, "post" do
    end
  end
end
