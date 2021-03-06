class CreateCartProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_products do |t|
      t.belongs_to :cart
      t.belongs_to :product
      t.integer :quantity
      t.datetime :put_date
      t.datetime :purchase_date

      t.timestamps
    end
  end
end
