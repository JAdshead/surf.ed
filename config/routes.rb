SurfEd::Application.routes.draw do
  devise_for :users


  devise_scope :user do
    #get 'users' => 'users#index'
    resources :users, only: [:index, :edit ,:update, :show]
  end
  resources :invite, except: [:destroy, :edit, :update, :show]
  

  resources :topics do 
    new do
      post :upload
      get  :save_video
    end
    member do
      post :vote_up
    end
  end
  
  resources :answers do
    member do
      post :vote_up
      post :vote_down
    end
  end
  # The priority is based upon order of creation:
  # first created -> highest priority.
  root to: 'home#index'

  resources :searches, only: [:create]

end
