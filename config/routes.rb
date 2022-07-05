Rails.application.routes.draw do
  get 'category/index'
  get 'payments/index'
  get 'payments/new'
  devise_for :users
  root to: "home#index"
end
