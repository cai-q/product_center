ActiveAdmin.register StandardProductUnit do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  sidebar "Relavant Models", only: [:show, :edit] do
    ul do
      li link_to "StockKeepingUnit", admin_standard_product_unit_stock_keeping_units_path(resource)
    end
  end

  permit_params :title, :description, :image_url
end

# ActiveAdmin.register StandardProductUnit, as: "SPU"