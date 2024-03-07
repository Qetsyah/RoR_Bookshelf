class User < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, uniqueness: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
