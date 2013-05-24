class AddReturnedOnFieldOnBorrowHistories < ActiveRecord::Migration
  def up
   add_column :borrow_histories, :returned_on , :date
  end

  def down
  end
end
