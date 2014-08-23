Rails.application.routes.draw do
  resources :articles
  resources :categories
  devise_for :admins
  root to: 'visitors#index'
  get '/about', to: 'visitors#about'
  get '/lawyers', to: 'visitors#lawyers'
  get '/services', to: 'visitors#services'
  get '/pricing', to: 'visitors#pricing'
end
