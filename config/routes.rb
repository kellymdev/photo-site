Rails.application.routes.draw do
  get 'images/random', to: 'images#random', as: :random_image
end
