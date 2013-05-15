class BookHistoryController < ApplicationController
  def create
    t = @product.book_histrory.new
  end
end
