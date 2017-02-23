Rails.application.routes.draw do
  root 'clinics#index'

  resources :students, only: [:index, :show]
  resources :clinics, only: [:index, :show]
end
