require 'rails_helper'
require './spec/requests/with_logged_user.rb'

RSpec.describe 'Books' do
  include_context "with logged user"

  describe 'GET #index' do
    context 'When books exist' do
      let!(:book_list) { create_list(:book, 5) }
      it 'shows all books' do
        get root_path
        aggregate_failures do
          expect(response.parsed_body).to include(*book_list.map { |book| book.title })
        end
      end
    end
  end

  describe 'GET #show' do
    context 'When the book exists' do
      let!(:book) { create(:book) }
      it 'shows book' do
        get book_path(book.id)

        expect(response.parsed_body).to include(book.title)
      end
    end
  end

  describe 'POST #create' do
    context 'When params are valid' do
      it 'creates a new book and shows all books' do
        aggregate_failures do
          expect { post books_path({
            book: {
              title: "Programming",
              description: "Give it a change",
              cover_url: "https://images.pexels.com/photos/825947/pexels-photo-825947.jpeg",
              genre: "design",
            }
          }) }.to change(Book, :count).by(1)
          expect(response).to redirect_to(books_path)
        end
      end
    end

    context 'When params are not valid' do
      it 'does not create a new book and shows form' do
        aggregate_failures do
          expect { post books_path({
            book: {
              title: "Programming",
              description: "Give it a change",
              genre: "design",
            }
          }) }.to change(Book, :count).by(0)
          expect(response).to have_http_status(:unprocessable_entity)
        end
      end
    end
  end

  describe 'PATCH #update' do
    context 'When params are valid' do
      let!(:book) { create(:book) }
      let(:params) do
        {
          book: {
            title: "Programming",
            description: "Give it a change",
            genre: "design",
          }
        }
      end
      it 'creates a new book and shows all books' do
        put book_path(book.id), params: params
        aggregate_failures do
          expect(book.reload.title).to eq(params[:book][:title])
          expect(response).to redirect_to(books_path)
        end
      end
    end

    context 'When params are not valid' do
      let!(:book) { create(:book) }
      let(:incorrect_params) do
        {
          book: {
            title: nil,
            description: "Give it a change",
            genre: "design",
          }
        }
      end
      it 'does not create a new book and shows form' do
        put book_path(book.id), params: incorrect_params
        aggregate_failures do
          expect(book.reload.title).not_to eq(incorrect_params[:book][:title])
          expect(response).to have_http_status(:unprocessable_entity)
        end
      end
    end
  end
end
