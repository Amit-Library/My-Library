class SellersController < ApplicationController
  def index
  	@books = current_user.books
  end
  def new
  	@book = Book.new
  end

end
