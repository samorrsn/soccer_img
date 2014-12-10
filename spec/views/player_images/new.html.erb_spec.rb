require 'spec_helper'

describe "player_images/new" do
  before(:each) do
    assign(:player_image, stub_model(PlayerImage).as_new_record)
  end

  it "renders new player_image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", player_images_path, "post" do
    end
  end
end
