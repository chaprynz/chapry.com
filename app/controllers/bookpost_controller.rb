class BookpostController < ApplicationController
  
  def show
  	book = Book.find params[:book_id]
  	@bookpost = Bookpost.find(params[:id])
  	@bookposts = book.bookposts.order(:tag)
  	@book = Book.find(params[:book_id])
  end 

  
end