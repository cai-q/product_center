class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :manufacturer, comment: '厂家。'
      t.string :origin, comment: '产地。'
      t.text :detail_pc, comment: '详情，通常由富文本编辑器产出。'
      t.text :detail_mobile, comment: '详情，通常由富文本编辑器产出。'
      t.timestamps
    end
  end
end
