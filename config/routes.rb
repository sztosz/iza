Rails.application.routes.draw do
  resources :story
  resources :category
  devise_for :admins
  root to: 'visitors#index'
end
