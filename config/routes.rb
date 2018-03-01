Rails.application.routes.draw do
  resources :portfolios

  get 'about-us', to: 'pages#about'
  # Navigating to:    localhost:3000/about-us
  # renders.......    /view/pages/about.html.erb

  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'
  # Navigating to:    localhost:3000/
  # renders.......    /view/pages/home.html.erb

end
