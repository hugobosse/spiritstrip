Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/team/', to: 'pages#team', as: 'team'
  get '/valeurs/', to: 'pages#concept', as: 'concept'

end
