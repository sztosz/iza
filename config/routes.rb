Rails.application.routes.draw do
  resources :news
  devise_for :admins
  root to: 'visitors#index'
end
