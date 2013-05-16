class BorrowHistoriesController < ApplicationController
  def index
    @borrow_history = BorrowHistory.all
  end
end
