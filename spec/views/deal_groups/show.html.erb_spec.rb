require 'rails_helper'

RSpec.describe 'deal_groups/show', type: :view do
  before(:each) do
    assign(:deal_group, DealGroup.create!(
                          group: nil,
                          deal: nil
                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
