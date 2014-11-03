require 'spec_helper'

describe User do
  # pending "add some examples to (or delete) #{__FILE__}"
  before { @user = User.new(  first_name: "Bob",
                              last_name: "Bobston",
                              email: "user@example.com",
                              password: "temp1234",
                              phone_number: "555-555-5555",
                              street_address: "1234 Cool Lane",
                              city: "Stringland",
                              state: "TN",
                              zipcode: 38002,
                              user_type: "admin"
                              ) }
  subject { @user }

  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:phone_number) }
  it { should respond_to(:street_address) }
  it { should respond_to(:city) }
  it { should respond_to(:state) }
  it { should respond_to(:zipcode) }
  it { should respond_to(:user_type) }

end
