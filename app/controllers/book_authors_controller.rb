class BookAuthorsController < ApplicationController
  before_action :set_book_author, only: %i[ show edit update destroy ]

  def index
    @book_authors = BookAuthor.all
  end

  def show
  end

  def new
    @book_author = BookAuthor.new
  end

  def edit
  end

  def create
    @book_author = BookAuthor.new(book_author_params)

    respond_to do |format|
      if @book_author.save
        format.html { redirect_to @book_author, notice: "Book author was successfully created." }
        format.json { render :show, status: :created, location: @book_author }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_author.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book_author.update(book_author_params)
        format.html { redirect_to @book_author, notice: "Book author was successfully updated." }
        format.json { render :show, status: :ok, location: @book_author }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_author.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book_author.destroy
    respond_to do |format|
      format.html { redirect_to book_authors_url, notice: "Book author was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_book_author
      @book_author = BookAuthor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_author_params
      params.permit(:author_id, :book_id)
    end
end
