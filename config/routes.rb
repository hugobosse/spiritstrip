Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/team/', to: 'pages#team', as: 'team'
  get '/valeurs/', to: 'pages#concept', as: 'concept'
  get '/degustation/', to: 'pages#tasting', as: 'tasting'

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  resources :products, only: [:index, :show]

  get 'blog', to: 'blog#index'
  get 'blog/:title', to: 'blog#post'

  root 'emailapi#index'
  post 'emailapi/subscribe', to: 'emailapi#subscribe'

end
