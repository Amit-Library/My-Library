class BuyersController < ApplicationController
	def index
		if params[:search]
    	@books = Book.search(params[:search])
  	else
    	@books = Book.all
  	end
	end
  def show
  	@book = Book.find(params[:id])
  end
end
