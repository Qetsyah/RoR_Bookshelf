class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :book

  scope :active, -> { where(returned_on: nil) }
  scope :inactive, -> { where.not(returned_on: nil) }
end
