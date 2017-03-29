ActiveAdmin.register Commodity do
  belongs_to :product, optional: true
  permit_params :product_id, :model, :specification, :price, :storage, :tax, :image, :outer_id

  form do |f|
    inputs :product, :model, :specification, :price, :storage, :tax, :outer_id
    actions
  end
end
