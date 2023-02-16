require 'rails_helper'

RSpec.describe "deals/new", type: :view do
  before(:each) do
    assign(:deal, Deal.new(
      user: nil,
      name: "MyString",
      amount: "9.99"
    ))
  end

  it "renders new deal form" do
    render

    assert_select "form[action=?][method=?]", deals_path, "post" do

      assert_select "input[name=?]", "deal[user_id]"

      assert_select "input[name=?]", "deal[name]"

      assert_select "input[name=?]", "deal[amount]"
    end
  end
end
