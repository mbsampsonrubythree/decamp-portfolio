Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  }
  resources :portfolios, except: [:show]


  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  # Creates a custom route so that the default 'portfolio/:id' link becomes
  # 'portfolio/:id'
  # This change makes more logical sense since we're showing a singular
  # portfolio item when we navigate to through this route.

  get 'angular', to: 'portfolios#angular'

  get 'about-us', to: 'pages#about', as: 'about_me'
  # Navigating to:    localhost:3000/about-us
  # renders.......    /view/pages/about.html.erb

  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
  # Navigating to:    localhost:3000/
  # renders.......    /view/pages/home.html.erb
end
