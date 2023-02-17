class Deal < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :deal_groups, dependent: :destroy
  has_many :groups, through: :deal_groups, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
end
