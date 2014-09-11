Rails.application.routes.draw do
  resources :articles
  resources :categories
  resources :contacts, only: [:new, :create]
  devise_for :admins
  root to: 'visitors#index'
  get '/about', to: 'visitors#about'
  get '/lawyers', to: 'visitors#lawyers'
  get '/services', to: 'visitors#services'
  get '/pricing', to: 'visitors#pricing'
  get '/advices', to: 'visitors#advices'
  get '/contacts', to: 'contacts#new'
end
