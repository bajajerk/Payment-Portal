class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :price
      t.string :status
      t.string :payment_id

      t.timestamps null: false
    end
  end
end
