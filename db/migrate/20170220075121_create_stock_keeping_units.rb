class CreateStockKeepingUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_keeping_units do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :storage
      t.integer :standard_product_unit_id

      t.timestamps
    end
  end
end
