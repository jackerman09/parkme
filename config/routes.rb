Rails.application.routes.draw do
  devise_for :users

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  resources :company, only: [:index, :show, :create, :update, :destroy]

  root to: 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/ember'
end
