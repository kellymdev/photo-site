Rails.application.routes.draw do
  root to: 'pages#home'

  get 'images/random', to: 'images#random', as: :random_image

  get 'pages/about', to: 'pages#about', as: :about
  get 'pages/contact', to: 'pages#contact', as: :contact
end
