class AddReturnedOnFieldOnProduct < ActiveRecord::Migration
  def up
    add_column :products, :returned_on ,:string
  end

  def down
  end
end
