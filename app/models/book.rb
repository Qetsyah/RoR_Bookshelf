class Book < ApplicationRecord
  enum :genre, {
   software_engineering: 0,
   design: 1,
   project_management: 2,
   ruby: 3,
   elixir: 4,
   phoenix: 5,
   android: 6,
   ios: 7,
   finance: 8,
   productivity: 9
  }

  belongs_to :shelf
  has_many :reservations, dependent: :destroy

  validates :title, :genre, :shelf, :cover_url, presence: true

  has_one :active_reservation, -> { active }, class_name: 'Reservation'

  def available?
    active_reservation.blank?
  end

  def reserved?
    active_reservation.present?
  end

end
