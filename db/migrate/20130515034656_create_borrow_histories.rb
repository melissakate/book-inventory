class CreateBorrowHistories < ActiveRecord::Migration
  def change
    create_table :borrow_histories do |t|
      t.string :borrowed_by
      t.timestamps
    end
  end
end
