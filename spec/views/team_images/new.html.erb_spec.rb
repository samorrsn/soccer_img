require 'spec_helper'

describe "team_images/new" do
  before(:each) do
    assign(:team_image, stub_model(TeamImage).as_new_record)
  end

  it "renders new team_image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", team_images_path, "post" do
    end
  end
end
