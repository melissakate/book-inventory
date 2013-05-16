class AddborrowedbytoProducts < ActiveRecord::Migration
  def change
    add_column :products , :borrowed_by, :string
  end

  def down
  end
end
