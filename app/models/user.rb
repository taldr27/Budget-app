class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :first_name, presence: true, length: { maximum: 25 }
  validates :last_name, presence: true, length: { maximum: 25 }
  validates :email, presence: true, length: { maximum: 50 }
  validates :password, presence: true, length: { minimum: 6 }

  has_many :groups, foreign_key: 'author_id', dependent: :destroy
  has_many :deals, foreign_key: 'author_id', dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
