require 'rails_helper'

RSpec.describe "deal_groups/edit", type: :view do
  let(:deal_group) {
    DealGroup.create!(
      group: nil,
      deal: nil
    )
  }

  before(:each) do
    assign(:deal_group, deal_group)
  end

  it "renders the edit deal_group form" do
    render

    assert_select "form[action=?][method=?]", deal_group_path(deal_group), "post" do

      assert_select "input[name=?]", "deal_group[group_id]"

      assert_select "input[name=?]", "deal_group[deal_id]"
    end
  end
end
