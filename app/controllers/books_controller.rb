class BooksController < ApplicationController
  def index
    @books = Book.order(:title)
  end

  def show
    @book = Book.find(params[:id])
  end  

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params.require(:book).permit(:title))
    if @book.save
      flash[:notice] = "Book successfully added!"
      redirect_to books_path
    else
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
