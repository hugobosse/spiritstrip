Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/team/', to: 'pages#team', as: 'team'
  get '/valeurs/', to: 'pages#concept', as: 'concept'
  get 'blog', to: 'blog#index'
  get 'blog/:title', to: 'blog#post'

  root 'emailapi#index'
  post 'emailapi/subscribe' => 'emailapi#subscribe'

end
