require 'spec_helper'

describe "statistics/edit" do
  before(:each) do
    @statistic = assign(:statistic, stub_model(Statistic))
  end

  it "renders the edit statistic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", statistic_path(@statistic), "post" do
    end
  end
end
