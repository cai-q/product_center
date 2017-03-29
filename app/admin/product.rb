ActiveAdmin.register Product do
  decorate_with ProductDecorator
  permit_params :name,
                :manufacturer,
                :origin,
                :image_header,
                :image_thumbnail,
                :detail_pc,
                :detail_mobile

  index do
    column :id
    column :name
    column :image_header
    column :image_thumbnail
  end

  form decorate: true do |f|
    semantic_errors
    inputs :name, :manufacturer, :origin
    inputs 'images', multipart: true do
      input :image_header,
            as: :file,
            hint: object.image_header_hint
      input :image_thumbnail,
            as: :file,
            hint: object.image_thumbnail_hint
    end
    input :detail_pc, as: :ckeditor
    input :detail_mobile, as: :ckeditor
    actions
  end
end