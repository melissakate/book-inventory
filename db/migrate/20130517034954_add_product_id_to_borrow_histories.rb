class AddProductIdToBorrowHistories < ActiveRecord::Migration
  def change
    add_column :borrow_histories, :product_id, :integer
  end
end
