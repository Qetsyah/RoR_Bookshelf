class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update]

  def index
    @books = Book.all
  end

  def show; end

  def edit; end

  def new
    @book = Book.new
  end

  def create
    result = Books::CreateBook.new(book_params).perform

    if result.success?
      redirect_to(books_path)
    else
      @book = result.book
      render :new, status: :unprocessable_entity
    end
  end

  def update
    result = Books::EditBook.new(@book, book_params).perform

    if result.success?
      redirect_to(books_path)
    else
      @book = result.book
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :description, :cover_url, :genre)
  end

  def find_book
    @book = Book.find(params[:id])
  end
end
