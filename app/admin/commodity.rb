ActiveAdmin.register Commodity do
  belongs_to :product, optional: true
  permit_params :product_id,
                :model,
                :specification,
                :price,
                :storage,
                :tax,
                :image,
                :outer_id,
                category_ids: []

  form do |f|
    inputs do
      input :product
      input :categories, as: :check_boxes, multiple: true
      input :model
      input :specification
      input :price
      input :storage
      input :tax
      input :outer_id
    end
    actions
  end
end
