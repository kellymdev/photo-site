Rails.application.routes.draw do
  root to: 'pages#home'

  get 'images/random', to: 'images#random', as: :random_image
end
