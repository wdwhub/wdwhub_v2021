require 'sidekiq/web'

Rails.application.routes.draw do
  namespace :backstage do
    get 'attractions/index'
  end
  namespace :backstage do
    get 'dining/index'
  end
  draw :madmin
  resources :parks, only: [:index, :show]
  resources :hotels, only: [:index, :show]
  resources :attractions, only: [:index, :show]
  resources :eateries, only: [:index, :show]

  resources :backstage, only: [:index]
  namespace :backstage do
    resources :parks, only: [:index, :show]
    resources :hotels, only: [:index, :show]
    resources :attractions, only: [:index, :show]
    resources :dining, only: [:index, :show]
  end

  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
authenticate :user, lambda { |u| u.admin? } do
  mount Sidekiq::Web => '/sidekiq'

  namespace :madmin do
  end
end

  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
