class BooksController < ApplicationController
  def index

  end

  def new
    @books = Book.all
    @book = Book.new(book_params)
  end

   def show
   @book = Book.find(params[:id])
   end


  def create
    if @books.save
      redirect_to show_book_path(@book.id)
    else
      render :new
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to new_book_path
  end

private
def book_params
  params.permit(:title, :body)
end
end
