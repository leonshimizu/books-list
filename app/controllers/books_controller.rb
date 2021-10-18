class BooksController < ApplicationController
  def index
    books = Book.all
    render json: books.as_json
  end
end
