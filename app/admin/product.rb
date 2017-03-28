ActiveAdmin.register Product do
  permit_params :name, :manufacturer, :origin, :image_header, :image_thumbnail, :detail

  form do |f|
    f.semantic_errors
    f.inputs :name, :manufacturer, :origin
    f.inputs 'images', :multipart => true do
      f.input :image_header,
              :as => :file,
              :hint => f.object.image_header? ? image_tag(f.object.image_header, height: 50) : content_tag(:span, 'No picture uploaded yet.')
      f.input :image_thumbnail,
              :as => :file,
              :hint => f.object.image_thumbnail? ? image_tag(f.object.image_thumbnail, height: 50) : content_tag(:span, 'No picture uploaded yet.')
    end
    f.input :detail, :as => :ckeditor
    f.actions
  end

  controller do
    include QiniuCloudHelper

    def create
      product = Product.new

      attrs = permitted_params[:product]
      temp_path = attrs[:image].tempfile.path

      image_url = upload_return_url(temp_path)

      product.image_url= image_url
      product.title= attrs[:title]
      product.description= attrs[:description]

      if product.save
        redirect_to admin_standard_product_unit_path(product)
      end
    end

    def update
      attrs = permitted_params[:product]
      product = StandardProductUnit.find(params[:id])

      if attrs[:image]
        temp_path = attrs[:image].tempfile.path
        image_url = upload_return_url(temp_path)
        product.image_url = image_url
      end
      product.title = attrs[:title]
      product.description = attrs[:description]

      if product.save
        redirect_to admin_standard_product_unit_path(product)
      end
    end
  end
end

# ActiveAdmin.register StandardProductUnit do
#
#   permit_params :title, :description, :image
#
#   sidebar "Relavant Models", only: [:show, :edit] do
#     ul do
#       li link_to "StockKeepingUnit", admin_standard_product_unit_stock_keeping_units_path(resource)
#     end
#   end
#
#   index as: :table do
#     id_column
#     column :title
#     column :description
#     column :created_at
#     column :updated_at
#     actions
#   end
#
#   show do
#     attributes_table do
#       row :title
#       row :description
#       row :image do |object|
#         image_tag object.image_url, :height => 50
#       end
#     end
#   end
#
#   form do |f|
#     f.semantic_errors # shows errors on :base
#     f.inputs :title, :description
#     f.inputs 'images', :multipart => true do
#       f.input :image,
#               :as => :file,
#               :label => 'image label',
#               :hint => f.object.image_url? ? image_tag(f.object.image_url, height: 50) : content_tag(:span, 'No picture uploaded yet.')
#     end
#     f.actions         # adds the 'Submit' and 'Cancel' buttons
#   end
#
#   controller do
#     include QiniuCloudHelper
#
#     def create
#       @standard_product_unit = StandardProductUnit.new
#
#       attrs = permitted_params[:standard_product_unit]
#       temp_path = attrs[:image].tempfile.path
#
#       image_url = upload_return_url(temp_path)
#
#       @standard_product_unit.image_url= image_url
#       @standard_product_unit.title= attrs[:title]
#       @standard_product_unit.description= attrs[:description]
#
#       if @standard_product_unit.save
#         redirect_to admin_standard_product_unit_path(@standard_product_unit)
#       end
#     end
#
#     def update
#       attrs = permitted_params[:standard_product_unit]
#       @standard_product_unit = StandardProductUnit.find(params[:id])
#
#       if attrs[:image]
#         temp_path = attrs[:image].tempfile.path
#         image_url = upload_return_url(temp_path)
#         @standard_product_unit.image_url = image_url
#       end
#       @standard_product_unit.title = attrs[:title]
#       @standard_product_unit.description = attrs[:description]
#
#       if @standard_product_unit.save
#         redirect_to admin_standard_product_unit_path(@standard_product_unit)
#       end
#     end
#   end
#
# end
#
# ActiveAdmin.register StandardProductUnit, as: "SPU"