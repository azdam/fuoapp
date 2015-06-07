require 'rails_helper'

RSpec.describe "administrators/index", type: :view do
  before(:each) do
    assign(:administrators, [
      Administrator.create!(
        :email => "Email",
        :password => "Password",
        :password_digest => "Password Digest"
      ),
      Administrator.create!(
        :email => "Email",
        :password => "Password",
        :password_digest => "Password Digest"
      )
    ])
  end

  it "renders a list of administrators" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
  end
end
