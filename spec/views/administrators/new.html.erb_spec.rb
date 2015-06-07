require 'rails_helper'

RSpec.describe "administrators/new", type: :view do
  before(:each) do
    assign(:administrator, Administrator.new(
      :email => "MyString",
      :password => "MyString",
      :password_digest => "MyString"
    ))
  end

  it "renders new administrator form" do
    render

    assert_select "form[action=?][method=?]", administrators_path, "post" do

      assert_select "input#administrator_email[name=?]", "administrator[email]"

      assert_select "input#administrator_password[name=?]", "administrator[password]"

      assert_select "input#administrator_password_digest[name=?]", "administrator[password_digest]"
    end
  end
end
