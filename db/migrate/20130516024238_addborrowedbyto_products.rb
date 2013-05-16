class AddborrowedbytoProducts < ActiveRecord::Migration
  def up
    add_column :products , :borrowed_by, :string
  end

  def down
  end
end
