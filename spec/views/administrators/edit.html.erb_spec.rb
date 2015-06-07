require 'rails_helper'

RSpec.describe "administrators/edit", type: :view do
  before(:each) do
    @administrator = assign(:administrator, Administrator.create!(
      :email => "MyString",
      :password => "MyString",
      :password_digest => "MyString"
    ))
  end

  it "renders the edit administrator form" do
    render

    assert_select "form[action=?][method=?]", administrator_path(@administrator), "post" do

      assert_select "input#administrator_email[name=?]", "administrator[email]"

      assert_select "input#administrator_password[name=?]", "administrator[password]"

      assert_select "input#administrator_password_digest[name=?]", "administrator[password_digest]"
    end
  end
end
