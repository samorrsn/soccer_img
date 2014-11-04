require 'spec_helper'

describe "team_members/edit" do
  before(:each) do
    @team_member = assign(:team_member, stub_model(TeamMember))
  end

  it "renders the edit team_member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", team_member_path(@team_member), "post" do
    end
  end
end
