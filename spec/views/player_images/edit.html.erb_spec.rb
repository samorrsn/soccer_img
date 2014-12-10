require 'spec_helper'

describe "player_images/edit" do
  before(:each) do
    @player_image = assign(:player_image, stub_model(PlayerImage))
  end

  it "renders the edit player_image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", player_image_path(@player_image), "post" do
    end
  end
end
