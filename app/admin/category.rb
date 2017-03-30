ActiveAdmin.register Category do
  permit_params :name

  form do |f|
    inputs
    actions
  end
end
