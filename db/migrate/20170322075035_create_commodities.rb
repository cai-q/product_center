class CreateCommodities < ActiveRecord::Migration[5.0]
  def change
    create_table :commodities do |t|
      t.belongs_to :product, index: true
      t.belongs_to :supplier, index: true
      t.string :model, comment: '型号。'
      t.string :specification, comment: '规格。'
      t.decimal :price, comment: '参考价格。'
      t.integer :storage, comment: '库存量。'
      t.decimal :tax, comment: '税费。'
      t.integer :outer_id, comment: '供货方的商品id。'
      t.timestamps
    end
  end
end