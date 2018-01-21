class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :price
      t.string :title
      t.string :description
      t.references :seller, index: true, foreign_key: true
      t.integer :stock
      t.boolean :available

      t.timestamps null: false
    end
  end
end
