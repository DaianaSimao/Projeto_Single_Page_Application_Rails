class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit destroy ]

  # GET /books or /books.json
  def index
    @books = Book.all
  end

  # GET /books/1 or /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # POST /books or /books.json
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path, notice: "Livro Solicitado com sucesso!" 
    else
      redirect_to books_path, alert:"#{@book.errors.full_messages.to_sentence}"
    end
  end
  # DELETE /books/1 or /books/1.json
  def destroy
    @book.destroy
      redirect_to books_url, notice: "Livro excluido com sucesso."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:vinculo, :titulo, :autor, :edicao, :issn, :ano, :editora)
    end
end
