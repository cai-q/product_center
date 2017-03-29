class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

    create_table :categories_commodities do |t|
      t.belongs_to :categories, index: true
      t.belongs_to :commodities, index: true
      t.timestamps
    end
  end
end
