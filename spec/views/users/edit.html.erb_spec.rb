require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :firstName => "MyString",
      :lastName => "MyString",
      :email => "MyString",
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_firstName[name=?]", "user[firstName]"
      assert_select "input#user_lastName[name=?]", "user[lastName]"
      assert_select "input#user_email[name=?]", "user[email]"
    end
  end
end
