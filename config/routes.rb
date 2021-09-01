Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/pricing', to: 'pages#pricing', as: :pricing
  get '/how-it-works', to: 'pages#how_it_works', as: :how_it_works

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
