require 'rails_helper'

RSpec.describe Reservation, type: :model do
  subject(:reservation) { build(:reservation) }

  describe 'Validations' do
    it { expect(reservation).to be_valid}
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:book) }
  end

  describe 'Scopes' do
    it 'returns active reservations' do
      reservations = create_list(:reservation, 5)

      expect(described_class.active).to eq(reservations)
    end
  end
end
