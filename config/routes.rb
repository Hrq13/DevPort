Rails.application.routes.draw do
  resources :portfolios, only: [:index, :create]
  get 'portfolio/new', to: 'portfolios#new', as: 'new_portfolio'
  get 'portfolio/:id/edit', to: 'portfolios#edit', as: 'edit_portfolio'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio'
  patch 'portfolio/:id', to: 'portfolios#update'
  delete 'portfolio/:id', to: 'portfolios#destroy'

  get 'about-henrique', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
end
