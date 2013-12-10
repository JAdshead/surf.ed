SurfEd::Application.routes.draw do
  devise_for :users

  # resources :users, only: [:edit, :update]

  resources :invite, except: [:destroy, :edit, :update, :show]
  

  resources :questions
  resources :answers
  # The priority is based upon order of creation:
  # first created -> highest priority.
  root to: 'home#index'

end
