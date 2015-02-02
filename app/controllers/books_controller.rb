class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    if params[:search]
      @books = Book.search(params[:search])
    else
      @books = Book.all
    end
  end

  def show
    respond_with(@book)
  end

  def new
    @book = Book.new
    respond_with(@book)
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id 
    @book.save
    respond_with(@book)
  end

  def update
    @book.update(book_params)
    respond_with(@book)
  end

  def destroy
    @book.destroy
    respond_with(@book)
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:book_name, :author_name, :price, :description, :user_id, :photo)
    end
end
