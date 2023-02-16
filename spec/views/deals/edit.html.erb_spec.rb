require 'rails_helper'

RSpec.describe "deals/edit", type: :view do
  let(:deal) {
    Deal.create!(
      user: nil,
      name: "MyString",
      amount: "9.99"
    )
  }

  before(:each) do
    assign(:deal, deal)
  end

  it "renders the edit deal form" do
    render

    assert_select "form[action=?][method=?]", deal_path(deal), "post" do

      assert_select "input[name=?]", "deal[user_id]"

      assert_select "input[name=?]", "deal[name]"

      assert_select "input[name=?]", "deal[amount]"
    end
  end
end
