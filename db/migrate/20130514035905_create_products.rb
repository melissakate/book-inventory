class CreateProducts < ActiveRecord::Migration
def change
  create_table :products do |t|
    t.string :title
    t.text :description
    t.string :author
    t.string :publisher
    t.decimal :price
    t.date :purchased_on
    t.string :purchased_at
    t.boolean :borrowed
    t.string :borrowed_by
    t.timestamps
  end
end
  end

