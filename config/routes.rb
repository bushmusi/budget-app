Rails.application.routes.draw do
  get 'category/index'
  post 'category/index', to: "category#create", as: "add_category"
  get 'category/show/:id', to: 'category#show', as: 'category'
  get 'category/new', to: 'category#new', as: 'new_category'
  get 'payments/index'
  get 'category/:id/new', to: 'payments#new', as: 'new_payment'
  post 'category/:id/create', to: 'payments#create', as: 'create_payment'
  get 'payments/new'
  devise_for :users
  root to: "home#index"
end
