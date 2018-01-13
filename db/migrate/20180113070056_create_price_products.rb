class CreatePriceProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :price_products do |t|
      t.belongs_to :product
      t.belongs_to :price
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
