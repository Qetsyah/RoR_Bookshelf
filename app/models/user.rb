class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reservations, dependent: :destroy

  validates :first_name, :last_name, :email, :password, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
