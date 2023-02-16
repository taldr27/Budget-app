require 'rails_helper'

RSpec.describe 'deal_groups/new', type: :view do
  before(:each) do
    assign(:deal_group, DealGroup.new(
                          group: nil,
                          deal: nil
                        ))
  end

  it 'renders new deal_group form' do
    render

    assert_select 'form[action=?][method=?]', deal_groups_path, 'post' do
      assert_select 'input[name=?]', 'deal_group[group_id]'

      assert_select 'input[name=?]', 'deal_group[deal_id]'
    end
  end
end
