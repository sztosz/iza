Rails.application.routes.draw do
  resources :articles
  resources :categories
  devise_for :admins
  root to: 'visitors#index'
end
