class Book < ApplicationRecord
  enum :genre, {
   software_engineering: 0,
   paranormal_culinary_mysteries: 1,
   alien_romance: 2,
   cryptozoological_memoirs: 3,
   supernatural_self_help: 4,
   time_traveling_pets: 5,
   mythological_mashup: 6,
   conspiracy_theory_bothany: 7
  }

  belongs_to :shelf
  has_may :reservations, dependent: :destroy
  has_one :active_reservation -> { active }, class_name: 'Reservation'

  validate presence_of: :title, :genre, :shelf, :cover_url
  validate uniqueness_of: :title

  def available?
    active_reservation.blank?
  end

  def reserved?
    active_reservation.present?
  end

end
