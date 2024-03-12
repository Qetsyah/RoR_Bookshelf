require 'rails_helper'

RSpec.describe Books::CreateBook do
  let(:book_params) do
    {
      title: "Programming",
      description: "Give it a change",
      cover_url: "https://images.pexels.com/photos/825947/pexels-photo-825947.jpeg",
      genre: "design"
    }
  end
  let(:incorrect_book_params) { { title: '' } }

  context 'with correct params' do
    it 'creates a book' do
      result = described_class.new(book_params).perform
      aggregate_failures do
        expect(result.book.title).to eq(book_params[:title])
        expect(result.book.description).to eq(book_params[:description])
        expect(result.book.cover_url).to eq(book_params[:cover_url])
        expect(result.book.genre).to eq(book_params[:genre])
      end
    end
  end

  context 'with incorrect params' do
    it 'not creates a book' do
      expect { described_class.new(incorrect_book_params).perform }.to change(Book, :count).by(0)
    end
  end
end
