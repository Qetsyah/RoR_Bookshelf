class User < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates presence_of: :first_name, :last_name, :email, :password
  validates uniqueness_of: :email

  def full_name
    "#{first_name} #{last_name}"
  end
end
