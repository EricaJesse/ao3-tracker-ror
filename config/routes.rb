Rails.application.routes.draw do
  resources :fics
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "fics#index"
  resources :fics
end