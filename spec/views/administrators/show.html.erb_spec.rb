require 'rails_helper'

RSpec.describe "administrators/show", type: :view do
  before(:each) do
    @administrator = assign(:administrator, Administrator.create!(
      :email => "Email",
      :password => "Password",
      :password_digest => "Password Digest"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Password Digest/)
  end
end
