Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :comments
    resources :ratings
    resources :tools
    resources :tags

    root to: "users#index"
  end

  devise_for :users, :controllers => { registrations: 'registrations' }
  
  root to: "home#index"

  resources 'tools', only: [:index, :show]
  resources 'ratings', only: :create
  resources 'comments', only: :create
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
