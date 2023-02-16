require 'rails_helper'

RSpec.describe 'deal_groups/index', type: :view do
  before(:each) do
    assign(:deal_groups, [
             DealGroup.create!(
               group: nil,
               deal: nil
             ),
             DealGroup.create!(
               group: nil,
               deal: nil
             )
           ])
  end

  it 'renders a list of deal_groups' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
