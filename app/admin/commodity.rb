ActiveAdmin.register Commodity do
  belongs_to :product, optional: true
  permit_params :product_id, :model, :specification, :price, :storage, :tax, :image, :outer_id

  form do |f|
    inputs :product, :model, :specification, :price, :storage, :tax, :outer_id
    inputs 'image', multipart: true do
      input :image,
            as: :file,
            hint: if object.image.exists?
                    image_tag(object.image.url, height: 50)
                  else
                    content_tag(:span, 'no image')
                  end
    end
    actions
  end
end
