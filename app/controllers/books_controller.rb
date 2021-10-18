class BooksController < ApplicationController
  def index
    books = Book.all
    render json: books.as_json
  end

  def create
    book = Book.new(
      title: params[:title],
      author: params[:author],
      year: params[:year]
    )
    book.save
    render json: book.as_json
  end

  def show
    the_id = params[:id]
    book = Book.find_by(id: the_id)
    render json: book.as_json
  end
end
