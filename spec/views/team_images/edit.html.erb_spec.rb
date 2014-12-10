require 'spec_helper'

describe "team_images/edit" do
  before(:each) do
    @team_image = assign(:team_image, stub_model(TeamImage))
  end

  it "renders the edit team_image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", team_image_path(@team_image), "post" do
    end
  end
end
