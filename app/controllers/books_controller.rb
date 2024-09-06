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
      redirect_to books_path
      flash[:notice] = "Book successfully added!"
    else
      render('new')
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(params.require(:book).permit(:title))
      flash[:notice] = "Book successfully updated!"
      redirect_to books_path
    else
      render('edit')
    end    
  end

  def delete
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book successfully deleted!"
    redirect_to books_path    
  end
end
