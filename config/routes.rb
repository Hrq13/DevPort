Rails.application.routes.draw do
  resources :portfolios, only: [:index, :create]
  get 'portfolios/angular', to: 'portfolios#angular', as: 'angular_portfolio_items'
  get 'portfolios/ruby_on_rails', to: 'portfolios#ruby_on_rails', as: 'ruby_on_rails_portfolio_items'
  get 'portfolio/new', to: 'portfolios#new', as: 'new_portfolio'
  get 'portfolio/:id/edit', to: 'portfolios#edit', as: 'edit_portfolio'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio'
  patch 'portfolio/:id', to: 'portfolios#update'
  delete 'portfolio/:id', to: 'portfolios#destroy'

  get 'about-henrique', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'
end
