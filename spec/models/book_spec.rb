require 'rails_helper'

RSpec.describe Book, type: :model do
  subject(:book) { build(:book) }

  describe 'Validations' do
    it { expect(book).to be_valid }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:genre) }
    it { is_expected.to validate_presence_of(:shelf) }
    it { is_expected.to validate_presence_of(:cover_url) }
  end

  describe 'Associations' do
    it { is_expected.to belong_to(:shelf) }
    it { is_expected.to have_many(:reservations).dependent(:destroy) }
  end

end
