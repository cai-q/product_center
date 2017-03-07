ActiveAdmin.register StockKeepingUnit do

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
  belongs_to :standard_product_unit, optional: true
  permit_params :title, :description, :price, :storage

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end

# ActiveAdmin.register StockKeepingUnit, as: "SKU"