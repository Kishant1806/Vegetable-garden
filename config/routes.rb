Rails.application.routes.draw do
  resources :customers
  devise_for :users
  
  root to: 'home#index'
  resources :vegetables
  get "search", to:"vegetables#search"
  get "contact_us", to:"home#contact_us"
  get "about_us", to:"home#about_us"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
