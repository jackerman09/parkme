Rails.application.routes.draw do
  get 'static_pages/home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root to: 'static_pages#home'
  get 'static_pages/ember'
end
