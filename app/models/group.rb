class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :deal_groups, dependent: :destroy
  has_many :deals, through: :deal_groups, dependent: :destroy

  validates :name, presence: true, length: { maximum: 15 }

  def total_deals
    deals.sum(:amount)
  end
end
