Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :commodities
  resources :suppliers
  root "admin/dashboard#index"
  use_doorkeeper
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
