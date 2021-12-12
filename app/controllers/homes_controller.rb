class HomesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @book = Book.new(book_params)
    if @books.save
      redirect_to show_book_path(@book.id)
    else
      render :new
    end
  end

  def edit
  end
end
