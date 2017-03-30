class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.timestamps
    end

    create_table :categories_commodities do |t|
      t.belongs_to :category, index: true
      t.belongs_to :commodity, index: true
      t.timestamps
    end
  end
end
